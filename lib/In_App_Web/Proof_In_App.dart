import 'package:awas_yojana/Model_Class/proof_Page_Model.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class Proof_In_App extends StatefulWidget {
  // final Proof proof;

  Proof_In_App({
    Key? key,
  }) : super(key: key);

  @override
  State<Proof_In_App> createState() => _Proof_In_AppState();
}

class _Proof_In_AppState extends State<Proof_In_App> {
  double _process = 0;

  late InAppWebViewController webView;

  Proof proof = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(proof.Proof_Name),
      ),
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(url: Uri.parse(proof.proof_link)),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int process) {
              setState((){});
              _process = (process / 100);
            },
          ),
          _process < 1
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
                            value: _process,
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
