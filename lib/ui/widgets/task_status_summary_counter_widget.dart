import 'package:flutter/material.dart';

class TaskStatusSummaryCounterWidget extends StatelessWidget {
  const TaskStatusSummaryCounterWidget({super.key, required this.count, required this.title});

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 32, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(count, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
