// ignore_for_file: camel_case_types

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/Screen/Awas_Yojana_Chek_Online/Gramin_shaher_Yojana/Yojana_Chek_Details.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int index = 0;

class Awas_Yojna_Chek_Online extends StatelessWidget {
  const Awas_Yojna_Chek_Online({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      appBar: AppBar(title: Text('आवास योजना चेक ऑनलाइन')),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            native.getNT(),
            SizedBox(height: ScreenSize.fSize_70()),
            Column(
              children: [
                ListView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: Chek_Name.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.showbuttonad(
                              context, '/Yojana_Chek_Details', Yojana_ChekList[index]);
                          // Get.to(Yojana_Chek_Details(
                          // ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.blue,
                                  blurRadius: 2,
                                  offset: Offset(1, 1))
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          width: ScreenSize.fSize_340(),
                          height: ScreenSize.fSize_80(),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                      color: Colors.blue, width: 2),
                                ),
                              ),
                            ),
                            onPressed: () {
                              controller.showbuttonad(
                                  context,
                                  '/Yojana_Chek_Details',
                                  Yojana_ChekList[index]);
                              // Get.to(Yojana_Chek_Details());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      Chek_Name[index],
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blue,
                                        fontSize: ScreenSize.fSize_23(),
                                      ),
                                    ),
                                    Text(
                                      "मुख्य पेज पर जाए",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blue,
                                        fontSize: ScreenSize.fSize_23(),
                                      ),
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  "asset/image/icon/right-arrow.png",
                                  color: Colors.blue,
                                  height: ScreenSize.fSize_20(),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: ScreenSize.fSize_10()),
            Container(
              decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue, blurRadius: 2, offset: Offset(1, 1))
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              width: ScreenSize.fSize_350(),
              height: ScreenSize.fSize_80(),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                ),
                onPressed: () {
                  controller.showbuttonad(
                      context, '/Goverment_Yojana', dataList[index]);

                  // Get.to(Goverment_Yojana());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Government Yojana",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                            fontSize: ScreenSize.fSize_25(),
                          ),
                        ),
                        Text(
                          "सभी सरकारी योजना",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenSize.fSize_20(),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      "asset/image/icon/right-arrow.png",
                      color: Colors.blue,
                      height: ScreenSize.fSize_20(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
