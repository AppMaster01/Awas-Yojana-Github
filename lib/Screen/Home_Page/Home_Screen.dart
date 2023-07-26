// ignore: avoid_web_libraries_in_flutter

import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/In_App_Web/Privacy_In_App.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Controller_ads/My_Contyroller/Controller_ad_show.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

// =====================================================================================Exit Button
  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await _showExitBottomSheet(context);
    return exitResult ?? false;
  }

  Future<bool?> _showExitBottomSheet(BuildContext context) async {
    return await showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: _buildBottomSheet(context),
        );
      },
    );
  }

  Widget _buildBottomSheet(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Exit App ?',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(thickness: 1.5, color: Colors.black),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Are you sure you tent to Quit?',
          style: TextStyle(fontSize: 23),
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shadowColor: Colors.greenAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: const Size(150, 40),
              ),
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigoAccent.shade400,
                shadowColor: Colors.redAccent,
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                minimumSize: const Size(150, 40), //////// HERE
              ),
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Column(
              children: [
//=================================================================================== ADS
                SizedBox(height: ScreenSize.fSize_10()),
                native.getNT(),
                // facebook_native.getfacebooknative(),
//====================================================================================== Get Started Button
                SizedBox(height: ScreenSize.fSize_80()),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue,
                      ],
                    ),
                  ),
                  width: ScreenSize.fSize_300(),
                  height: ScreenSize.fSize_55(),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // backgroundColor:
                      // MaterialStateProperty.all(Colors.transparent),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    onPressed: () {
                      controller.showbuttonad(context, '/First_Page', "");
                      // Get.to(First_Page());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'GET STARTED',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 30),
                        ),
                        Image.asset("asset/image/icon/next.png",
                            width: MediaQuery
                                .of(context)
                                .size
                                .width / 10),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: ScreenSize.fSize_50()),

                ///==================================================================================== Rate Icon Button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: ScreenSize.fSize_80(),
                      width: ScreenSize.fSize_80(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: _shareURL,
                            child: Image(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 17,
                              image: const AssetImage(
                                  'asset/image/icon_logo/rate.png'),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text('Rate'),
                        ],
                      ),
                    ),

                    ///====================================================================================== Share Icons Button
                    Container(
                      height: ScreenSize.fSize_80(),
                      width: ScreenSize.fSize_80(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () async {
                              await Share.share(
                                  'https://in.linkedin.com/in/rohan-kansagra-603860251');
                            },
                            child: Image(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 20,
                              image: const AssetImage(
                                  'asset/image/icon_logo/sharing.png'),
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text('Share'),
                        ],
                      ),
                    ),

                    ///================================================================================== Privacy Icon Button
                    Container(
                      height: ScreenSize.fSize_70(),
                      width: ScreenSize.fSize_80(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const In_App_Browser());
                            },
                            child: Image(
                              height: MediaQuery
                                  .of(context)
                                  .size
                                  .height / 17,
                              image: const AssetImage(
                                  'asset/image/icon_logo/shield.png'),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text('Privacy'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            ///======================================================================================Banner Ads
            Align(
              alignment: Alignment.bottomCenter,
              child: banner.getBN(),
            )
          ],
        ),
      ),
    );
  }
}

_shareURL() async {
  const url = 'https://in.linkedin.com/company/infinitizi?trk=ppro_cprof';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
