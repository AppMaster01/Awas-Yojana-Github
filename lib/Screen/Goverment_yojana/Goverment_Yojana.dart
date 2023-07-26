
// ignore_for_file: camel_case_types

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';

// ignore: must_be_immutable
class Goverment_Yojana extends StatelessWidget {
  Goverment_Yojana({Key? key}) : super(key: key);
  Data data = Get.arguments;

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      appBar: AppBar(title: const Text("Goverment Yojana")),
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 10),
                // facebook_native.getfacebooknative(),
                native.getNT(),

                SizedBox(height: ScreenSize.fSize_15()),
                Column(
                  children: [
                    ListView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: Image_photo.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context, "/Yojana", dataList[index]);
                            },
                            child: Container(
                              height: ScreenSize.fSize_70(),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image(
                                      height: ScreenSize.fSize_50(),
                                      image: AssetImage(Image_photo[index])),
                                  Text(Name[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 22,
                                          color: Colors.blue)),
                                  const SizedBox(width: 100),
                                  Image(
                                      height: ScreenSize.fSize_30(),
                                      image: const AssetImage(
                                          'asset/image/icon/right-arrow 1.png')),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9),
                      child: GestureDetector(
                        onTap: () {
                          controller.showbuttonad(
                              context, '/Other_Schemes', dataList[index]);

                          // Get.to(Other_Schemes());
                        },
                        child: Container(
                          height: ScreenSize.fSize_90(),
                          width: ScreenSize.fSize_290(),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.blue, width: 2),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Other Schemes',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                              SizedBox(height: 5),
                              Text('अन्य योजनांए',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenSize.fSize_100(),
                )
              ],
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
        ],
      ),
    );
  }
}
