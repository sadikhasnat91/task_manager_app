import 'package:get/get.dart';
import 'package:task_manager_app/ui/controller/new_task_by_status_controller.dart';

import 'ui/controller/sign_in_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignInController()); // Binding (binds immediately before first screen load)
    // Get.lazyPut(() => SignInController()); // Lazy binding (binds later after first screen load)
    Get.put(NewTaskByStatusController());
  }

}