import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool _isObscure = true.obs;
  changeObscure() {
    _isObscure.value = !_isObscure.value;
  }
}
