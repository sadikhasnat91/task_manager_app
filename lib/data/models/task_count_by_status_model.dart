import 'package:task_manager_app/data/models/task_count_model.dart';

class TaskCountByStatusModel {
  String? status;
  List<TaskCountModel>? taskByStatusList;

  TaskCountByStatusModel({
    required this.taskByStatusList,
  });

  TaskCountByStatusModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if(json['data'] != null) {
      taskByStatusList = <TaskCountModel>[];
      json['data'].forEach((v) {
        taskByStatusList!.add(TaskCountModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      if (taskByStatusList != null)
        'data': taskByStatusList!.map((v) => v.toJson()).toList(),
    };
  }
}
