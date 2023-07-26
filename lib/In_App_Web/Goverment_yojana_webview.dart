import 'package:awas_yojana/Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/Model_Class/Goverment_Yojana_Listview_Data.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class Goverment_Yojana_web extends StatefulWidget {
  Goverment_Yojana_web({
    Key? key,
  }) : super(key: key);

  @override
  State<Goverment_Yojana_web> createState() => _Goverment_Yojana_webState();
}

class _Goverment_Yojana_webState extends State<Goverment_Yojana_web> {
  // final Data data;
  double process = 0;

  late InAppWebViewController webView;

  Yojana_Chek yojana_Chek = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(yojana_Chek.Chek_Name.toString()),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(yojana_Chek.Chek_link)),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int procesing) {
              setState(() {});
              process = (procesing / 100);
            },
          ),
          process < 1
              ? Center(
                  child: Container(
                    height: ScreenSize.fSize_100(),
                    width: ScreenSize.fSize_100(),
                    child: Column(
                      children: [
                        Container(
                          height: ScreenSize.fSize_40(),
                          width: ScreenSize.fSize_40(),
                          child: CircularProgressIndicator(
                            strokeWidth: ScreenSize.fSize_4(),
                            value: process,
                          ),
                        ),
                        SizedBox(
                          height: ScreenSize.fSize_10(),
                        ),
                        Text('Loading...',
                            style: TextStyle(fontSize: ScreenSize.fSize_18())),
                      ],
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
