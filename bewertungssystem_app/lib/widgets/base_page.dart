import 'package:flutter/material.dart';

class BasePage extends StatelessWidget {
  final String title;
  final Widget child;
  final List<Widget>? actions;

  const BasePage({
    super.key,
    required this.title,
    required this.child,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        automaticallyImplyLeading: false, // zeigt Back-Button automatisch
        actions: actions,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: child,
      ),
    );
  }
}
