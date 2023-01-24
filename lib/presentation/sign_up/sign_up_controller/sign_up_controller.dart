import 'package:get/get.dart';

class SignUpController extends GetxController {
  RxBool isObscure = true.obs;
  changeObscure() {
    isObscure.value = !isObscure.value;
  }
}
