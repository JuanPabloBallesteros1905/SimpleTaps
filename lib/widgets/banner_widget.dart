import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

Widget bannerWidget() {
  final BannerAd myBanner = BannerAd(
    adUnitId: "ca-app-pub-7234352635750390/6275443704",
    size: AdSize.banner,
    request: const AdRequest(),
    listener: const BannerAdListener(),
  );
  myBanner.load();
  final AdWidget adWidget = AdWidget(ad: myBanner);
  return Container(
    height: myBanner.size.height.toDouble(),
    width: myBanner.size.width.toDouble(),
    child: adWidget,
  );
}
