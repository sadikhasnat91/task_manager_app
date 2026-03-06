import 'package:get/get.dart';
import 'package:task_manager_app/data/models/user_model.dart';
import 'package:task_manager_app/data/services/network_caller.dart';
import 'package:task_manager_app/data/utils/urls.dart';

class SignInController extends GetxController {
  bool _signInProgress = false;
  bool get inProgress => _signInProgress;

  String? _errorMessage;
  String? get errorMessage => _errorMessage; // Private member access korar jonno get/set method banano lage

  Future<bool> signIn(String email, String password) async {
    bool isSuccess = false;
    _signInProgress = true;
    // TODO: Call update method to update the UI

    Map<String, String> requestBody = {'email': email, 'password': password};

    final NetworkResponse response = await NetworkCaller.postRequest(
      url: Urls.loginUrl,
      body: requestBody,
    );
    print(response);

    if (response.isSuccess) {
      String token = response.responseData!['token'];
      print(token);
      UserModel userModel = UserModel.fromJson(response.responseData!['data']);
      print(userModel);
      isSuccess = true;
      _errorMessage = 'Sign In Successful';
    } else {
      if (response.statusCode == 401) {
        _errorMessage = 'Invalid email or password';
      }
      else {
        _errorMessage = response.errorMessage;
      }
    }
    _signInProgress = false;
    // TODO: Call update method to update the UI

    return isSuccess;
  }
}
