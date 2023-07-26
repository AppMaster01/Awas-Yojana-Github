// import 'package:awas_yojana/Controller_ads/Facebook_ads/facebook_native_ads.dart';
// import 'package:awas_yojana/Model_Class/proof_Page_Model.dart';
// import 'package:awas_yojana/media_query/Media_query.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../../../../In_App_Web/आधार कार्ड/आधार अपडेट.dart';
// import '../../../../../In_App_Web/आधार कार्ड/आधार नामांकन.dart';
//
// int index = 0;
//
// class Proof_Details extends StatelessWidget {
//   final Proof proof;
//
//   const Proof_Details({Key? key, required this.proof}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ScreenSize.sizerInit(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(proof.proof_Hindi),
//       ),
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             physics: BouncingScrollPhysics(),
//             child: Column(
//               children: [
//                 Container(
//                   height: ScreenSize.fSize_300(),
//                   child: facebook_native.getfacebooknative(),
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(10),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.blue,
//                           blurRadius: 4,
//                           offset: Offset(
//                             1,
//                             2,
//                           ),
//                         )
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         Center(
//                             child: Padding(
//                           padding: const EdgeInsets.only(top: 10),
//                           child: Text(
//                             proof.Proof_Name,
//                             style: TextStyle(
//                                 fontSize: 27,
//                                 color: Colors.blue,
//                                 fontWeight: FontWeight.bold),
//                           ),
//                         )),
//                         SizedBox(height: 5),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 8, left: 9),
//                           child: Text(proof.Proof_Description,
//                               style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   color: Colors.blue,
//                                   fontSize: 18)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 200,
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 580),
//             child: Container(
//               height: ScreenSize.fSize_190(),
//               width: double.infinity,
//               color: Colors.white,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: ScreenSize.fSize_340(),
//                     height: ScreenSize.fSize_50(),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.cyan.shade300),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       onPressed: () {
//                         Get.to(Adhar_In_App_First());
//                       },
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(proof.iconName,
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold)),
//                           Image(
//                               height: ScreenSize.fSize_40(),
//                               image: AssetImage(
//                                   'asset/image/icon/arrow-right (1).png')),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 15),
//                   SizedBox(
//                     width: ScreenSize.fSize_340(),
//                     height: ScreenSize.fSize_50(),
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor:
//                             MaterialStateProperty.all(Colors.indigo.shade700),
//                         shape:
//                             MaterialStateProperty.all<RoundedRectangleBorder>(
//                           RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                         ),
//                       ),
//                       onPressed: () {
//                         Get.to(Adhar_In_App_Second());
//                       },
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Text(proof.iconName1,
//                               style: TextStyle(
//                                   fontSize: 20,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold)),
//                           Image(
//                               height: ScreenSize.fSize_40(),
//                               image: AssetImage(
//                                   'asset/image/icon/arrow-right (1).png')),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// ignore_for_file: non_constant_identifier_names

import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/proof_Page_Model.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int index = 0;

class Proof_Details extends StatelessWidget {
  Proof_Details({
    Key? key,
  }) : super(key: key);
  Proof proof1 = Get.arguments;

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(proof1.proof_Hindi),
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
                                proof1.Proof_Name,
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500),
                              ),
                            )),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(proof1.Proof_Description,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blue,
                                      fontSize: 18)),
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: ScreenSize.fSize_190(),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  color: Colors.white,
                  height: ScreenSize.fSize_180(),
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: ScreenSize.fSize_4()),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: ScreenSize.fSize_326(),
                        height: ScreenSize.fSize_50(),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.cyan),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {
                            controller.showbuttonad(
                              context,
                              '/Proof_In_App',
                              proof1,
                            );
                            // Get.to(Proof_In_App(proof: proof));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                proof1.iconName,
                                style:  TextStyle(
                                    fontSize: ScreenSize.fSize_18(), fontWeight: FontWeight.w400),
                              ),
                              const Image(
                                  height: 35,
                                  image: AssetImage(
                                      'asset/image/icon/arrow-right (1).png')),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 13),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        width: ScreenSize.fSize_326(),
                        height: ScreenSize.fSize_50(),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.indigo),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () {
                            controller.showbuttonad(
                                context, '/Proof_In_App', proof1);
                            //
                            // Get.to(Proof_In_App(
                            //   proof: proof,
                            // ));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: ScreenSize.fSize_10()),
                              Text(
                                proof1.iconName1,
                                style:  TextStyle(
                                    fontSize: ScreenSize.fSize_18(), fontWeight: FontWeight.w400),
                              ),
                              const Image(
                                  height: 35,
                                  image: AssetImage(
                                      'asset/image/icon/arrow-right (1).png')),
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(height: ScreenSize.fSize_15()),
                    ],
                  )),
            ),
            Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
          ],
        ));
  }
}
