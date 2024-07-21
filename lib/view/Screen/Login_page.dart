import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validation_api_calling_getx/view/Screen/Home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: const Text(
          'Login Page',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome Back!',
            style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          Text(
            'Enter Your Username & Password',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          SizedBox(height: 50),
          TextField(
            decoration: InputDecoration(
              hintText: 'E-mail Id',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(suffix: Icon(Icons.remove_red_eye_outlined,color: Colors.black),
              hintText: 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
         Spacer(),
          Center(
            child: InkWell(onTap: () {
              Get.to(HomeScreen(),transition: Transition.upToDown);
            },
              child: Container(
                height: 60,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5,left: 35),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
              ),
            ),
          ),SizedBox(height: 10),
          Center(child: Text('Forgotten Password?',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),),
          SizedBox(height: 5),
          Center(child: Text('0r Create a New Account',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.bold),),),
        ],
      ),
    );
  }
}
