import 'package:awas_yojana/Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';
import 'package:awas_yojana/Screen/Goverment_yojana/yojana.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class In_App_yojana_chek extends StatefulWidget {
  In_App_yojana_chek({
    Key? key,
  }) : super(key: key);

  @override
  State<In_App_yojana_chek> createState() => _In_App_yojana_chekState();
}

class _In_App_yojana_chekState extends State<In_App_yojana_chek> {
  double process = 0;

  late InAppWebViewController webView;

  Yojana_Chek yojana_Chek1 = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(yojana_Chek1.Chek_Name),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest:
                URLRequest(url: Uri.parse(yojana_Chek1.Chek_link)),
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
