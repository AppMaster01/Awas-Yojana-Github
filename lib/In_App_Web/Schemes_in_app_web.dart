import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../Model_Class/Other_Schemes.dart';

class Schemes_In_App extends StatefulWidget {
  // final Schemes schemes;

  Schemes_In_App({
    Key? key,
  }) : super(key: key);

  @override
  State<Schemes_In_App> createState() => _Schemes_In_AppState();
}

class _Schemes_In_AppState extends State<Schemes_In_App> {
  double process = 0;

  late InAppWebViewController webView;

  Schemes schemes = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(schemes.Schemes_Name.toString()),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(schemes.link)),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int procesing) {
              setState((){});
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
