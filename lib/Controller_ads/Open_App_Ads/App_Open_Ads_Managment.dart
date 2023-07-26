import 'package:awas_yojana/main.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AppOpenAdManager {
  AppOpenAd? _appOpenAd;
  bool _isShowingAd = false;
  static bool isLoaded = false;

  void loadAd() {
    AppOpenAd.load(
      adUnitId: config.value["AppOpen"],
      orientation: AppOpenAd.orientationPortrait,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          print("Ad Loadede.................................");
          _appOpenAd = ad;
          isLoaded = true;
        },
        onAdFailedToLoad: (error) {},
      ),
    );
  }

  bool get isAdAvailable {
    return _appOpenAd != null;
  }

// void showAdIfAvailable() {
//   print(
//       "Called=====================================================================");
//   if (_appOpenAd == null) {
//     print('Tried to show ad before available.');
//     loadAd();
//     return;
//   }
//   if (_isShowingAd) {
//     print('Tried to show ad while already showing an ad.');
//     return;
//   }
//   // Set the fullScreenContentCallback and show the ad.
//   _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
//     onAdShowedFullScreenContent: (ad) {
//       _isShowingAd = true;
//       print('$ad onAdShowedFullScreenContent');
//     },
//     onAdFailedToShowFullScreenContent: (ad, error) {
//       print('$ad onAdFailedToShowFullScreenContent: $error');
//       _isShowingAd = false;
//       ad.dispose();
//       _appOpenAd = null;
//     },
//     onAdDismissedFullScreenContent: (ad) {
//       print('$ad onAdDismissedFullScreenContent');
//       _isShowingAd = false;
//       ad.dispose();
//       _appOpenAd = null;
//       loadAd();
//     },
//   );
//   _appOpenAd!.show();
// }
}
