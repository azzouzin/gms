import 'package:get/get.dart';
import 'package:jms/Controllers/UserControllers/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<AuthController>(AuthController());
  }
}
