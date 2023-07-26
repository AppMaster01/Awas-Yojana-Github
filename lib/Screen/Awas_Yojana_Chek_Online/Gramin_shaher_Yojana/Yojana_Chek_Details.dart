// ignore_for_file: non_constant_identifier_names, camel_case_types, must_be_immutable

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int index = 0;

class Yojana_Chek_Details extends StatelessWidget {
  // final Yojana_Chek yojana_Chek;

  Yojana_Chek_Details({
    Key? key,
    // required this.yojana_Chek,
  }) : super(key: key);
  Yojana_Chek yojana_Chek = Get.arguments;

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(yojana_Chek.Chek_Name),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          // facebook_native.getfacebooknative(),
          native.getNT(),

          SizedBox(height: ScreenSize.fSize_10()),

          Padding(
            padding: const EdgeInsets.all(8.0),
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
                      yojana_Chek.Chek_Name,
                      style: const TextStyle(
                          fontSize: 25,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(yojana_Chek.Chek_Description,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.blue,
                            fontSize: 16)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: ScreenSize.fSize_150(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // ignore: prefer_const_literals_to_create_immutables

                  stops: [0.0, 1.0],
                  colors: [
                    Colors.blue.shade300,
                    Colors.blue,
                  ],
                ),
              ),
              height: ScreenSize.fSize_50(),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                onPressed: () {
                  controller.showbuttonad(
                      context, '/In_App_yojana_chek', yojana_Chek);
                  // Get.to(In_App_Gramin());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(yojana_Chek.Chek_Name,
                        style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Image(
                        height: ScreenSize.fSize_40(),
                        image: const AssetImage(
                            'asset/image/icon/arrow-right (1).png')),
                  ],
                ),
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
