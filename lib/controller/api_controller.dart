import 'dart:convert';
import 'package:get/get.dart';
import 'package:validation_api_calling_getx/controller/api_sevices.dart';
import 'package:validation_api_calling_getx/modal/Api_model.dart';

class ApiController extends GetxController {
  var comments = Comments().obs;
  var isLoading = true.obs;

  Future<void> fetchData() async {
   ApiServices apiServices = ApiServices();
    String? data = await apiServices.apiCalling();
    if (data != null) {
      Map<String, dynamic> json = jsonDecode(data);
      comments.value = Comments.fromJson(json);
      isLoading.value = false;
    } else {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    fetchData();
    super.onInit();
  }
}
