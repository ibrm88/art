import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:untitled1/urls.dart';
InterstitialAd? interstitialAd;
BannerAd? bannerAd;
class googleAds {
  void loadInterstitalAd({bool showAfterLoad= false}) {
    InterstitialAd.load(
        adUnitId: KAdStrings.interstitalAs1,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
            if(showAfterLoad) showInterstitalAd();
          },
          onAdFailedToLoad: (LoadAdError error) {
          },
        ));
  }


void showInterstitalAd(){

  if(interstitialAd!= Null){
    interstitialAd!.show();
  }
}
  void loadBannerAd() {
    bannerAd = BannerAd(
      adUnitId: KAdStrings.bannerAd1,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        // Called when an ad is successfully received.
        onAdLoaded: (ad) {
         bannerAd = ad as BannerAd;

        },

        onAdFailedToLoad: (ad, err) {

          ad.dispose();
        },
      ),

    )..load();
  }

}