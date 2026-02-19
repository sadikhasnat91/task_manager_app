import 'package:flutter/material.dart';

class TaskItemWidget extends StatelessWidget {
  const TaskItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text('Title', style: TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Description will be here', style: TextStyle(color: Colors.grey)),
            Text(
              'Date: 01/01/2026',
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: _getStatusColor('New'),
                  ),
                  child: Text('New', style: TextStyle(color: Colors.white)),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.delete, color: Colors.red),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.edit, color: Colors.blueGrey),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color _getStatusColor(String taskStatus) {
    if (taskStatus == 'New') {
      return Colors.blue;
    } else if(taskStatus == 'Progress') {
      return Colors.orange;
    } else if(taskStatus == 'Completed') {
      return Colors.green;
    } else if(taskStatus == 'Cancelled') {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}