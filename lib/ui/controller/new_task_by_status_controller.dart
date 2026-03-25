import 'package:get/get.dart';
import 'package:task_manager_app/data/models/task_count_by_status_model.dart';
import 'package:task_manager_app/data/services/network_caller.dart';
import 'package:task_manager_app/data/utils/urls.dart';

class NewTaskByStatusController extends GetxController{
  bool _getTaskCountByStatusInProgress = false;
  bool get getTaskCountByStatusInProgress => _getTaskCountByStatusInProgress;

  TaskCountByStatusModel? _taskCountByStatusModel;
  TaskCountByStatusModel get taskCountByStatusModel => _taskCountByStatusModel ?? TaskCountByStatusModel(taskByStatusList: []);

  Future<bool> getTaskCountByStatus() async {
    bool isSuccess = false;
    _getTaskCountByStatusInProgress = true;
    update();

    final NetworkResponse response = await NetworkCaller.getRequest(url: Urls.taskCountByStatusUrl);
    print(response);

    if(response.isSuccess) {
      _taskCountByStatusModel = TaskCountByStatusModel.fromJson(response.responseData!);
      isSuccess = true;
    }
    _getTaskCountByStatusInProgress = false;
    update();
    return isSuccess;
  }
}