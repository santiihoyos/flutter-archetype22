import 'package:flutter_poc/base/service/url_service.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  final UrlService _urlService;

  WelcomeController(this._urlService);

  /// Called when user taps on "MAKE A BOOKING" button
  void onMakeABookingClicked() {
    print("MAKE A BOOKING!");
    Get.toNamed("/booking");
  }

  /// Called when user taps on "CANCEL A BOOKING" button
  void onCancelABookingClicked() {
    print("CANCEL A BOOKING!");
  }

  /// Called when user wa
  void onTwitterClicked() async {
    final thereWasNavigation = await _urlService.openUrl(
        "https://twitter.com/santiihoyos",
        forceWebView: true,
        enableJavaScript: true,
        enableDomStorage: false);
    if (!thereWasNavigation) {
      print("Error on navigation to Twitter");
      //TODO: manage this error.
    }
  }

  void onInstagramClicked() async {
    final thereWasNavigation = await _urlService.openUrl(
        "https://instagram.com/santi_hoyos",
        forceWebView: true,
        enableJavaScript: true,
        enableDomStorage: false);
    if (!thereWasNavigation) {
      print("Error on navigation to Instagram");
      //TODO: manage this error.
    }
  }

  void onFacebookClicked() async {
    final thereWasNavigation = await _urlService.openUrl(
        "https://facebook.com/santiago.hoyos93",
        forceWebView: true,
        enableJavaScript: true,
        enableDomStorage: false);
    if (!thereWasNavigation) {
      print("Error on navigation to FaceBook");
      //TODO: manage this error.
    }
  }
}
