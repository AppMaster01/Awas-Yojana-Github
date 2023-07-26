import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scroll_page_view/pager/page_controller.dart';
import 'package:scroll_page_view/pager/scroll_page_view.dart';

import '../../../../Model_Class/proof_Page_Model.dart';


int index = 0;

const _images = [
  'asset/image/banner_image/img1.png',
  'asset/image/banner_image/img2.png',
  'asset/image/banner_image/img3.png',
  'asset/image/banner_image/img4.png',
];

class Second_Page extends StatelessWidget {
  const Second_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('आवास योजना देखें'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(children: [
                ///===============================================================================Scroll Bar
                SizedBox(
                  height: 240,
                  child: CustomScrollView(
                    slivers: [
                      const SliverPadding(
                        padding: EdgeInsets.all(10),
                      ),
                      SliverToBoxAdapter(
                        child: SizedBox(
                          height: ScreenSize.fSize_180(),
                          child: ScrollPageView(
                            // indicatorColor: Colors.black,
                            // checkedIndicatorColor: Colors.white,
                            controller: ScrollPageController(),
                            children:
                                _images.map((e) => _imageView(e)).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                ///===============================================================================Awas Yojna Chek Online Button
                GestureDetector(
                  onTap: () {
                    controller.showbuttonad(
                        context, '/Awas_Yojna_Chek_Online', "");
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: ScreenSize.horizontalBlockSize! * 92,
                        height: ScreenSize.fSize_100(),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(100),
                              bottomLeft: Radius.circular(100),
                              bottomRight: Radius.circular(20),
                              topRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.blue.shade300,
                              Colors.blue,
                            ],
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Awas Yojana Check Online',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: ScreenSize.fSize_15()),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'आवास योजना चेक ऑनलाइन',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                      fontSize: ScreenSize.fSize_15()),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Image(
                              image: const AssetImage(
                                  'asset/image/icon/right-arrow.png'),
                              height: ScreenSize.fSize_20(),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: Container(
                          width: ScreenSize.fSize_100(),
                          height: ScreenSize.fSize_100(),
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  scale: 3.8,
                                  image: AssetImage(
                                      'asset/image/icon/home Icon.png')),
                              border:
                                  Border.all(color: Colors.blue, width: 1.6),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    ],
                  ),
                ),

                ///===============================================================================Proof Grideview
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        physics: ScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: Proof_Name.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 12,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 3.9),
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              controller.showbuttonad(
                                  context, '/Proof_Details', ProofList[index]);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.blue),
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image(
                                      height: ScreenSize.fSize_50(),
                                      image: const AssetImage(
                                          'asset/image/icon/Awas Yojna Dekhe  Icon.png')),
                                  Text(
                                    Proof_Name[index],
                                    style: const TextStyle(
                                        color: Colors.blue, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),

                ///===============================================================================Goverment Yojana button
                const SizedBox(
                  height: 10,
                ),
                Container(
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
                    height: ScreenSize.fSize_90(),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side:
                                const BorderSide(color: Colors.blue, width: 2),
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
                                  fontWeight: FontWeight.w700,
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
                    ) // ),
                    ),
                SizedBox(height: ScreenSize.fSize_100()),
              ]),
            ),
            Align(alignment: Alignment.bottomCenter, child: banner.getBN()),
          ],
        ));
  }
}

///=============================================================================== Scroll Bar Image Widget
Widget _imageView(String image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: ClipRRect(
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(image, fit: BoxFit.cover),
    ),
  );
}
