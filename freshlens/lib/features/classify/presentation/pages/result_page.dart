import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final dynamic result;

  const ResultPage({super.key, this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: Center(child: Text('Result Page for $result')),
    );
  }
}
