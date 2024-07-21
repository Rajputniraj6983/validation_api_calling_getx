// import 'dart:ffi';
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:validation_api_calling_getx/controller/api_controller.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final ApiController apiController = Get.put(ApiController());
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Colors.black,
//         title: Text(
//           'Api_calling',
//           style: TextStyle(
//               color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
//         ),
//       ),
//       body:
//         Obx(() => ListView.builder(itemCount: 100,itemBuilder: (context, index) => Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10),
//             child: Column(
//               children: [
//                 Center(
//                   child: Container(
//                     height: 150,
//                     width: 380,
//                     child: Row(
//                       children: [
//                         Column(
//                           children: [
//                             Column(
//                               children: [
//                                 Text(apiController.comments.data![index].id.toString(),style: TextStyle(color: Colors.white,fontSize: 20),),
//                                 Text(apiController.comments.data![index].name.toString(),style: TextStyle(color: Colors.white,fontSize: 15),),
//                               ],
//                             ),
//                             SizedBox(height: 10),
//                             Row(
//                               children: [
//                                 Text(apiController.comments.data![index].body.toString(),overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white,fontSize: 15),),
//                                 SizedBox(height: 15),
//                               ],
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                         color: Colors.black),
//                   ),
//                 )
//               ],
//             ),
//           ),
//                 ),
//         )
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validation_api_calling_getx/controller/api_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ApiController apiController = Get.put(ApiController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            'Api_calling',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ),
      body: Obx(()
      {
          if (apiController.isLoading.value) {
            return Center(child: CircularProgressIndicator());
          } else if (apiController.comments.value.data == null) {
            return Center(child: Text('No data available', style: TextStyle(color: Colors.white)));
          } else {
            return ListView.builder(
              itemCount: apiController.comments.value.data!.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 150,
                        width: 380,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(apiController.comments.value.data![index].id.toString(), style: TextStyle(color: Colors.white, fontSize: 20),),
                            Text(apiController.comments.value.data![index].name.toString(), style: TextStyle(color: Colors.white, fontSize: 15),),
                            SizedBox(height: 10),
                            Text(apiController.comments.value.data![index].body.toString(),maxLines: 2,overflow: TextOverflow.ellipsis, style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
