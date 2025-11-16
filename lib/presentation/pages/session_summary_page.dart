import 'package:flutter/material.dart';

class SessionSummaryPage extends StatelessWidget {
  const SessionSummaryPage({super.key, required this.sessionId});

  final String sessionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Session Summary'),
      ),
      body: Center(
        child: Text('Summary for Session: $sessionId'),
      ),
    );
  }
}
