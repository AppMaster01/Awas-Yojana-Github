import 'package:awas_yojana/Controller_ads/My_Contyroller/Controller_ad_show.dart';
import 'package:awas_yojana/Controller_ads/mobile_banner_ads/admob_banner.dart';
import 'package:awas_yojana/Model_Class/Other_Schemes.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';


class Other_Schemes extends StatefulWidget {
  const Other_Schemes({Key? key}) : super(key: key);

  @override
  State<Other_Schemes> createState() => _Other_SchemesState();
}

class _Other_SchemesState extends State<Other_Schemes> {
  @override
  Widget build(BuildContext context) {
    ScreenSize.sizerInit(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Other Schemes')),
      body: Column(
        children: [
          Container(
            child: Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: Schemes_Name.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        controller.showbuttonad(context,
                            '/Other_Schemes_Details', dataList1[index]);

                        // Get.to(Other_Schemes_Details(
                        //   schemes: dataList1[index],
                        // ));
                      },
                      child: Container(
                        height: ScreenSize.fSize_70(),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.blue, width: 2),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 20),
                            Text(Schemes_Name[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 22,
                                    color: Colors.blue)),
                            // SizedBox(width: 100),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                  height: ScreenSize.fSize_25(),
                                  image: const AssetImage(
                                      'asset/image/icon/right-arrow 1.png')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          banner.getBN(),
        ],
      ),
    );
  }
}
