import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/di/injection.dart';
import '../bloc/history_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HistoryBloc>()..add(const HistoryEvent.started()),
      child: Scaffold(
        appBar: AppBar(title: const Text('Scan History')),
        body: BlocBuilder<HistoryBloc, HistoryState>(
          builder: (context, state) {
            return switch (state) {
              HistoryLoading() => const Center(child: CircularProgressIndicator()),
              HistoryError(:final message) => Center(child: Text('Error: $message')),
              HistoryLoaded(:final scans) => scans.isEmpty
                  ? const Center(child: Text('No scans yet.'))
                  : ListView.builder(
                      itemCount: scans.length,
                      itemBuilder: (context, index) {
                        final scan = scans[index];
                        return Dismissible(
                          key: ValueKey(scan.id),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20),
                            child: const Icon(Icons.delete, color: Colors.white),
                          ),
                          onDismissed: (_) {
                            context.read<HistoryBloc>().add(HistoryEvent.deleteScan(scan.id));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Scan deleted')),
                            );
                          },
                          child: ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: FileImage(File(scan.imagePath)),
                                  fit: BoxFit.cover,
                                  onError: (e,s) => const NetworkImage('https://via.placeholder.com/50'),
                                ),
                              ),
                            ),
                            title: Text('${scan.foodCategory} - ${scan.verdict.toUpperCase()}'),
                            subtitle: Text(DateFormat.yMMMd().add_jm().format(scan.createdAt)),
                          ),
                        );
                      },
                    ),
            };
          },
        ),
      ),
    );
  }
}
