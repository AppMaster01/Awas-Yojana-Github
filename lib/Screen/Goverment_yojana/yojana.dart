// ignore_for_file: non_constant_identifier_names

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int index = 0;

class Yojana extends StatelessWidget {
  // final Data data;

  Yojana({
    Key? key,
    // required this.data,
  }) : super(key: key);

  Data data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(data.Name),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  // facebook_native.getfacebooknative(),
                  native.getNT(),
                  SizedBox(height: ScreenSize.fSize_10()),

                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
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
                                data.Name,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.only(top: 8, left: 8),
                              child: Text(data.yojana_Text,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                      fontSize: 16)),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: ScreenSize.fSize_150(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Colors.white,
                  height: ScreenSize.fSize_120(),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_4()),
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
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {
                            controller.showbuttonad(
                                context, '/Goverment_Yojana_web', data);
                            // Get.to(Goverment_Yojana_web(
                            //   data: data,
                            // ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                data.Name,
                                style: TextStyle(
                                    fontSize: 28, fontWeight: FontWeight.w400),
                              ),
                              Image(
                                  height: ScreenSize.fSize_40(),
                                  image: AssetImage(
                                      'asset/image/icon/arrow-right (1).png')),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
            Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
          ],
        ));
  }
}
