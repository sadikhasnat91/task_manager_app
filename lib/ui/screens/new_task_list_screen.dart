import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/widgets/screen_background.dart';
import 'package:task_manager_app/ui/widgets/task_item_widget.dart';
import 'package:task_manager_app/ui/widgets/task_status_summary_counter_widget.dart';
import 'package:task_manager_app/ui/widgets/tm_app_bar.dart';

class NewTaskListScreen extends StatefulWidget {
  const NewTaskListScreen({super.key});

  @override
  State<NewTaskListScreen> createState() => _NewTaskListScreenState();
}

class _NewTaskListScreenState extends State<NewTaskListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppBar(),
      body: ScreenBackground(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              _buildTasksSummaryByStatus(),
              _buildTaskListView(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }

  Widget _buildTaskListView() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 8),
      shrinkWrap: true,
      primary: false,
      itemCount: 7,
      itemBuilder: (context, index) {
        return TaskItemWidget();
      },
    );
  }

  Widget _buildTasksSummaryByStatus() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return TaskStatusSummaryCounterWidget(
                count: '11',
                title: 'Completed',
              );
            },
          ),
        ),
      ),
    );
  }
}
