import 'package:get/get.dart';

class SignInController extends GetxController {
  RxBool isObscure = true.obs;
  changeObscure() {
    isObscure.value = !isObscure.value;
  }
}
