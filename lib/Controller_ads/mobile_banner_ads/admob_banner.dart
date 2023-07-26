// ignore_for_file: invalid_use_of_protected_member

import 'package:awas_yojana/main.dart';
import 'package:awas_yojana/media_query/Media_query.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:url_launcher/url_launcher.dart';

final native = Get.put(NativeAds());
final banner = Get.put(BannerAds());

void initState() {
  FacebookAudienceNetwork.init();
}

class NativeAds extends GetxController {
  Future<void> _launchURL(String url) async {
    late Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can not launch url";
    }
  }

  Widget getNT() {
    print('Get.currentRoute${Get.currentRoute}');
    late NativeAd nativeAd;
    var isLoaded = false.obs;
    if (config.value[Get.currentRoute]["Native_Ad_type"] == "admob") {
      nativeAd = NativeAd(
        request: const AdManagerAdRequest(),
        adUnitId: config.value[Get.currentRoute]["Native_Admob"],
        listener: NativeAdListener(onAdLoaded: (ad) {
          nativeAd.load();
          isLoaded.value = true;
          print("Banner ad Loaded");
        }, onAdFailedToLoad: (ad, error) {
          print("Banner ad Failed to Load");
        }),
        factoryId: 'listTileMedium',
      );
      nativeAd.load();
    }

    return config.value[Get.currentRoute]["Native_Ad_type"] == "admob"
        ? Obx(() => isLoaded.value
            ? Stack(
                children: [
                  Container(
                    width: ScreenSize.fSize_340(),
                    height: ScreenSize.fSize_250(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: AdWidget(
                      ad: nativeAd,
                    ),
                    // color: Colors.blue,
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(5)),
                      height: ScreenSize.fSize_15(),
                      width: ScreenSize.fSize_25(),
                      child: Center(
                        child: Text('Ad',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: ScreenSize.fSize_10())),
                      ),
                    ),
                  ),
                ],
              )
            : Container(
                width: ScreenSize.fSize_350(),
                height: ScreenSize.fSize_250(),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ))
        : config.value[Get.currentRoute]["Native_Ad_type"] == "fb"
            ? Container(
                width: ScreenSize.fSize_350(),
                height: ScreenSize.fSize_250(),
                child: Container(
                  width: ScreenSize.fSize_350(),
                  height: ScreenSize.fSize_250(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                      )
                    ],
                  ),
                  child: FacebookNativeAd(
                    placementId: config.value["Native_FB"],
                    adType: NativeAdType.NATIVE_AD,
                    width: ScreenSize.fSize_350(),
                    height: ScreenSize.fSize_250(),
                    backgroundColor: Colors.white,
                    titleColor: Colors.black,
                    descriptionColor: Colors.grey,
                    buttonColor: Colors.lightBlue[100],
                    buttonTitleColor: Colors.blue,
                    buttonBorderColor: Colors.lightBlue[100],
                    listener: (result, value) {
                      print("Native Ad: $result --> $value");
                    },
                    keepExpandedWhileLoading: true,
                    expandAnimationDuraion: 1000,
                  ),
                ),
              )
            : GestureDetector(
                onTap: () {
                  _launchURL(config.value[Get.currentRoute]["Url"]);
                },
                child: Stack(
                  children: [
                    Container(
                      width: ScreenSize.fSize_340(),
                      height: ScreenSize.fSize_250(),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                config.value[Get.currentRoute]["Image_Url"]),
                            fit: BoxFit.fill),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 4,
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      top: 5,
                      left: 5,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        height: ScreenSize.fSize_15(),
                        width: ScreenSize.fSize_25(),
                        child: Center(
                          child: Text('Ad',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: ScreenSize.fSize_10())),
                        ),
                      ),
                    ),
                  ],
                ),
              );
  }
}

//======================================FACEBOOK BANNER===================================================

class BannerAds extends GetxController {
  BannerAd? bannerAd;
  var bannerLoaded = false.obs;

  Widget getBN() {
    bannerAd = BannerAd(
      size: AdSize.fluid,
      adUnitId: config.value[Get.currentRoute]["Banner_Admob"],
      listener: BannerAdListener(
          onAdLoaded: (ad) {
            bannerAd!.load();
            bannerLoaded.value = true;
            print("Banner ad Loaded");
          },
          onAdFailedToLoad: (ad, error) {}),
      request: const AdRequest(),
    );
    bannerAd!.load();
    // bannerLoaded.value = true;

    return config.value[Get.currentRoute]["Banner_Ad_type"] == "admob"
        ? SizedBox(
            height: 50,
            child: AdWidget(
              ad: bannerAd!,
            ),
          )
        : Container(
            height: 50,
            child: FacebookBannerAd(
              placementId: config.value["Banner_FB"],
              bannerSize: BannerSize.STANDARD,
              listener: (result, value) {},
            ),
          );
  }
}
