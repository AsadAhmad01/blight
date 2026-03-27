import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/di/injection.dart';
import '../bloc/classify_bloc.dart';
import '../widgets/animated_scan_button.dart';
import '../widgets/camera_loading_overlay.dart';
import '../widgets/permission_denied_widget.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  CameraController? _cameraController;
  bool _isPermissionGranted = false;
  final ImagePicker _picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final status = await Permission.camera.request();
    if (status.isGranted) {
      final cameras = await availableCameras();
      if (cameras.isNotEmpty) {
        _cameraController = CameraController(
          cameras.first,
          ResolutionPreset.high,
          enableAudio: false,
        );
        await _cameraController!.initialize();
        if (mounted) {
          setState(() {
            _isPermissionGranted = true;
          });
        }
      }
    } else {
      if (mounted) {
        setState(() {
          _isPermissionGranted = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  Future<void> _takePhoto(BuildContext context) async {
    if (_cameraController == null || !_cameraController!.value.isInitialized) return;
    try {
      final file = await _cameraController!.takePicture();
      if (!context.mounted) return;
      context.read<ClassifyBloc>().add(ClassifyEvent.classifyRequested(file.path));
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  Future<void> _pickImage(BuildContext context) async {
    try {
      final file = await _picker.pickImage(source: ImageSource.gallery);
      if (file != null) {
        if (!context.mounted) return;
        context.read<ClassifyBloc>().add(ClassifyEvent.classifyRequested(file.path));
      }
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Error: $e')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ClassifyBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Scan Food'),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.photo_library),
                onPressed: () => _pickImage(context),
              ),
            )
          ],
        ),
        body: Builder(
          builder: (context) => BlocConsumer<ClassifyBloc, ClassifyState>(
            listener: (context, state) {
              if (state is ClassifySuccess) {
                context.pushNamed('result', extra: state.result);
              } else if (state is ClassifyFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              }
            },
            builder: (context, state) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  _isPermissionGranted && _cameraController != null && _cameraController!.value.isInitialized
                      ? CameraPreview(_cameraController!)
                      : const PermissionDeniedWidget(),
                  
                  if (state is ClassifyLoading)
                    const CameraLoadingOverlay(),

                  if (_isPermissionGranted && state is! ClassifyLoading)
                    Positioned(
                      bottom: 32,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: AnimatedScanButton(
                          onPressed: () => _takePhoto(context),
                        ),
                      ),
                    )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
