import 'package:flutter_poc/base/service/implementation/url_service_common.dart';
import 'package:flutter_poc/base/service/url_service.dart';
import 'package:flutter_poc/data/booking/booking_api.dart';
import 'package:flutter_poc/domain/usecase/rick_and_morty/implementation/character_use_case_impl.dart';
import 'package:flutter_poc/ui/feature/admin/login/login_controller.dart';
import 'package:flutter_poc/ui/feature/admin/login/login_page.dart';
import 'package:flutter_poc/ui/feature/booking/booking_controller.dart';
import 'package:flutter_poc/ui/feature/booking/booking_page.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_poc/ui/feature/welcome/welcome_controller.dart';
import 'package:flutter_poc/ui/feature/welcome/welcome_page.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:model/entity/dog_breed/dog_breed.dart';

class Injector {
  ///Creates or find Instance of [Injector]
  static Injector getInstance() {
    late Injector injector;
    try {
      injector = Get.find();
    } catch (ex) {
      injector = Injector();
    } finally {
      // ignore: control_flow_in_finally
      return injector;
    }
  }

  Injector() {
    Get.put(this);
  }

  T find<T>({String? tag}) {
    return Get.find(tag: tag);
  }

  /// resolves a instance of [UrlService]
  static UrlService getUrlService() {
    return Get.put(UrlServiceCommonImpl());
  }

  Dio getDio() {
    late Dio dio;
    try {
      dio = Get.find();
      return dio;
    } catch (ex) {
      dio = Dio()
        ..interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
          print('REQUEST[${options.method}] => PATH: ${options.path}');
          return handler.next(options); //continue
        }, onResponse: (response, handler) {
          print(
              'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
          return handler.next(response); // continue
        }, onError: (DioError e, handler) {
          print('ERROR[${e.response?.statusCode}] => URI: ${e.requestOptions.uri}');
          return handler.next(e); //continue
        }));
    }

    return Get.put(dio);
  }

  BookingApi getBookingApi() {
    return BookingApi(getDio(), baseUrl: "http://localhost:7890");
  }

  //region PAGE WIDGETS
  WelcomePage getWelcomePage() {
    return WelcomePage(
      welcomeController: Get.put(WelcomeController(Injector.getUrlService())),
    );
  }

  LoginPage getLoginPage() {
    return LoginPage(
      loginController: Get.put(LoginController()),
    );
  }

  BookingPage getBookingPage() {
    return BookingPage(controller: BookingController(getBookingApi()));
  }

//endregion
}
