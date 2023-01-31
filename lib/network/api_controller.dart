import 'dart:developer';
import 'package:blog/presentation/home/components/controller/post_controller.dart';
import 'package:get/get.dart';

import '../network/api_provider.dart';

class ApiController extends GetxController {
  List dataResponse = [].obs;
  RxBool loading = false.obs;
  final ApiProvider _apiProvider = ApiProvider();
  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    loading.value = true;

    List<Data>? products = await _apiProvider.fetchData();
    dataResponse.assignAll(products!);
    log("${dataResponse.length}");

    loading.value = false;
  }
}
