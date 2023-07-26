import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class First_Page extends StatelessWidget {
  const First_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('आवास योजना देखें'),
      ),
      body: Center(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  ///===================================================================================== Native Ads
                  SizedBox(height: 10),
                  native.getNT(),
                  SizedBox(height: ScreenSize.fSize_15()),
                  Padding(
                    padding: const EdgeInsets.all(15),
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

                      ///===============================================================================   Awas Yojana Dekehe description
                      child: Column(
                        children: [
                          Center(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'आवास योजना देखें',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500),
                            ),
                          )),
                          Divider(
                            color: Colors.blue,
                            thickness: 1.3,
                            indent: 10,
                            endIndent: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8),
                            child: Text(
                                'प्रधानमंत्री आवास योजना (PMAY) भारत सरकार की एक योजना है जिसके माध्यम से नगरों व ग्रामीण इलाकों में रहने वाले निर्धन लोगों को उनकी क्रयशक्ति के अनुकूल घर प्रदान किये जाएँगे। सरकार ने ९ राज्यों के ३०५ नगरों एवं कस्बों को चिह्नित किया है जिनमें ये घर बनाए जाएंगे। केंद्र सरकार द्वारा प्रधानमंत्री आवास योजना ग्रामीण योजना ग्रामीण प्रधानमंत्री आवास योजना ग्रामीण संचालित योजना है इस योजना का शुभारम्भ 25 जून, 2015 को हुआ। इस योजना का उद्देश्य 2022 तक सभी को घर उपलब्ध करना है। इस के लिए सरकार 20 लाख घरो का निर्माण करवाएगी जिनमे से 18 लाख घर झुग्गी-झोपड़ी वाले इलाके में बाकि 2 लाख शहरों के गरीब इलाकों में किया जायेगा। सरकार ने इस योजना को 3 फेज में विभाजित किया है',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                    fontSize: 16)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: ScreenSize.fSize_20(),
                  ),

                  ///================================================================================Awas Yojana Dekehe Elevated Button
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
                    height: ScreenSize.fSize_55(),
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
                        controller.showbuttonad(context, '/Second_Page', "");
                        // Get.to(Second_Page());
                      },
                      child: Center(
                        child: Text(
                          'आवास योजना देखें',
                          style: TextStyle(fontSize: ScreenSize.fSize_25()),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: ScreenSize.fSize_100()),
                ],
              ),
            ),
            Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
          ],
        ),
      ),
    );
  }
}
