// ignore_for_file: non_constant_identifier_names

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Other_Schemes.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int index = 0;

class Other_Schemes_Details extends StatelessWidget {
  // final Schemes schemes;

  Other_Schemes_Details({
    Key? key,
    // required this.schemes,
  }) : super(key: key);

  Schemes schemes = Get.arguments;

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(schemes.Schemes_Name.toString()),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  // facebook_native.getfacebooknative(),
                  native.getNT(),

                  SizedBox(height: ScreenSize.fSize_10()),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.blue,
                              blurRadius: 4,
                              offset: Offset(
                                1,
                                2,
                              ),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Center(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                schemes.Schemes_Name,
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(schemes.Schemes_Description,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                      fontSize: 18)),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: ScreenSize.fSize_170(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Colors.white,
                  height: ScreenSize.fSize_130(),
                  width: double.infinity,
                  child: Column(children: [
                    SizedBox(height: ScreenSize.fSize_15()),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.blue.shade300,
                            Colors.blue,
                          ],
                        ),
                      ),
                      width: ScreenSize.fSize_326(),
                      height: ScreenSize.fSize_50(),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          controller.showbuttonad(
                              context, '/Schemes_In_App', schemes);

                          // Get.to(Schemes_In_App(schemes: schemes));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: ScreenSize.fSize_10()),
                            Text(
                              schemes.Schemes_Name,
                              style: TextStyle(
                                  fontSize: ScreenSize.fSize_18(),
                                  fontWeight: FontWeight.w400),
                            ),
                            const Image(
                                height: 36,
                                image: AssetImage(
                                    'asset/image/icon/arrow-right (1).png')),
                          ],
                        ),
                      ),
                    ),
                  ])),
            ),
            Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
          ],
        )
    );
  }
}
