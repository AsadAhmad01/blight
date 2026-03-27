import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionDeniedWidget extends StatelessWidget {
  const PermissionDeniedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.videocam_off, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text('Camera permission is required to scan food.'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => openAppSettings(),
            child: const Text('Open Settings'),
          )
        ],
      ),
    );
  }
}
