import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validation_api_calling_getx/view/Screen/Login_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
