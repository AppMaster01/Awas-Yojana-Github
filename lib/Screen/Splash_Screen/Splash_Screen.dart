import 'package:awas_yojana/Controller_ads/My_Contyroller/My_Controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatelessWidget {
  Splash_Screen({Key? key}) : super(key: key);

  final MyAppController myAppController = Get.put(MyAppController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(135),
              child: Column(
                children: [
                  Image(
                      image: AssetImage(
                          'asset/image/main_logo/logo 520 x 520.png')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
