import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_app/data/models/task_count_model.dart';
import 'package:task_manager_app/ui/controller/new_task_by_status_controller.dart';
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
  final NewTaskByStatusController _newTaskByStatusController = Get.find<NewTaskByStatusController>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getTaskCountByStatus();
  }

  Future<void> _getTaskCountByStatus() async {
    final bool isSuccess = await _newTaskByStatusController.getTaskCountByStatus();
  }

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
      child: GetBuilder<NewTaskByStatusController>(
        builder: (controller){
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            child: SizedBox(
              height: 128,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: controller.taskCountByStatusModel.taskByStatusList?.length ?? 0,
                itemBuilder: (context, index) {
                  final TaskCountModel taskCountModel = controller.taskCountByStatusModel.taskByStatusList?[index] ?? TaskCountModel();
                  return TaskStatusSummaryCounterWidget(
                    count: taskCountModel.sum.toString(),
                    title: taskCountModel.id ?? '',
                  );
                },
              ),
            ),
          );
        }
      ),
    );
  }
}
