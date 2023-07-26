import 'dart:convert';

import 'package:awas_yojana/Controller_ads/My_Contyroller/My_Controller.dart';
import 'package:awas_yojana/In_App_Web/Privacy_In_App.dart';
import 'package:awas_yojana/In_App_Web/Proof_In_App.dart';
import 'package:awas_yojana/In_App_Web/Schemes_in_app_web.dart';
import 'package:awas_yojana/Model_Class/Awas_YojanaChek_Gramin_Sheher.dart';
import 'package:awas_yojana/Model_Class/proof_Page_Model.dart';
import 'package:awas_yojana/Screen/Goverment_yojana/yojana.dart';
import 'package:facebook_audience_network/facebook_audience_network.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'In_App_Web/Goverment_yojana_webview.dart';
import 'In_App_Web/आवास योजना चेक करें (ग्रामीण) _In_App_Web/Yojana_In_App.dart';
import 'Screen/Awas_Yojana_Chek_Online/Gramin_shaher_Yojana/Yojana_Chek_Details.dart';
import 'Screen/Awas_Yojana_Chek_Online/आवास योजना चेक ऑनलाइन.dart';
import 'Screen/Goverment_yojana/Goverment_Yojana.dart';
import 'Screen/Home_Page/Home_Screen.dart';
import 'Screen/Other_Schemes/Other_Schemes_Details.dart';
import 'Screen/Other_Schemes/other_Schemes.dart';
import 'Screen/Proof_Details/Proof_Details.dart';
import 'Screen/Splash_Screen/Splash_Screen.dart';
import 'Screen/आवास योजना देखें/आवास योजना देखें.dart';
import 'Screen/आवास योजना देखें/आवास योजना देखें_2.dart';

int index = 0;

final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
RxMap config = {}.obs;

Future initConfig() async {
  await remoteConfig.setConfigSettings(RemoteConfigSettings(
    fetchTimeout: const Duration(seconds: 1),
    minimumFetchInterval: const Duration(seconds: 10),
  ));
  await remoteConfig.fetchAndActivate();
}

AppOpenAd? appOpenAd;

loadAd() {
  AppOpenAd.load(
    adUnitId: config.value['AppOpen'],
    orientation: AppOpenAd.orientationPortrait,
    request: const AdManagerAdRequest(),
    adLoadCallback: AppOpenAdLoadCallback(
      onAdLoaded: (ad) {
        print("Ad Loadede.................................");
        appOpenAd = ad;
        // isLoaded=true;
        ad.show();
      },
      onAdFailedToLoad: (error) {
        // loadAd();
        AppOpenAd.load(
          adUnitId: config.value['AppOpen'],
          orientation: AppOpenAd.orientationPortrait,
          request: const AdManagerAdRequest(),
          adLoadCallback: AppOpenAdLoadCallback(
            onAdLoaded: (ad) {
              print("Ad Loadede.................................");
              appOpenAd = ad;
              // isLoaded=true;
              ad.show();
            },
            onAdFailedToLoad: (error) {
              // loadAd();
              // Handle the error.
            },
          ),
        );

        // Handle the error.
      },
    ),
  );
}

AndroidNotificationChannel channel = AndroidNotificationChannel(
    "Hello ", "Rohan",
    playSound: true, importance: Importance.high);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
    sound: true,
  );
  initConfig().whenComplete(() {
    config.value = json.decode(remoteConfig.getString('ADS'));
    loadAd();
    print('__remoteConfig -> ${config.value}');
  });

  FacebookAudienceNetwork.init();

  runApp(GetMaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Splash_Screen(),
      '/Home_Screen': (context) => const Home_Screen(),
      '/First_Page': (context) => const First_Page(),
      '/Second_Page': (context) => Second_Page(),
      '/Goverment_Yojana_web': (context) => Goverment_Yojana_web(),
      '/Yojana': (context) => Yojana(),
      '/Proof_Details': (context) => Proof_Details(),
      '/In_App_yojana_chek': (context) => In_App_yojana_chek(),
      '/Awas_Yojna_Chek_Online': (context) => const Awas_Yojna_Chek_Online(),
      '/Goverment_Yojana': (context) => Goverment_Yojana(),
      '/Other_Schemes': (context) => const Other_Schemes(),
      '/In_App_Browser': (context) => const In_App_Browser(),
      '/Proof_In_App': (context) => Proof_In_App(),
      '/Schemes_In_App': (context) => Schemes_In_App(),
      '/Yojana_Chek_Details': (context) => Yojana_Chek_Details(),
      '/Other_Schemes_Details': (context) => Other_Schemes_Details(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
