import 'dart:convert';
import 'package:get/get.dart';
import 'package:validation_api_calling_getx/controller/api_sevices.dart';
import 'package:validation_api_calling_getx/modal/Api_model.dart';

class ApiController extends GetxController{
  late Comments comments;
  Future<void> fetchData() async {
    ApiServices apiServices = ApiServices();
    String? data = await  apiServices.apiCalling();
    Map json = jsonDecode(data!);
    comments = Comments.fromJson(json);

  }
  ApiController()
  {
    fetchData();
  }
}
