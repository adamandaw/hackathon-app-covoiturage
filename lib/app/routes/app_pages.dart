import 'package:get/get.dart';

import 'package:flutter_mobile_halkaton/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/home/views/home_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/listeTrajet/bindings/liste_trajet_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/listeTrajet/views/liste_trajet_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/login/bindings/login_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/login/views/login_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/map/bindings/map_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/map/views/map_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/otp/bindings/otp_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/otp/views/otp_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_one_screen/bindings/page_up_one_screen_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_one_screen/views/page_up_one_screen_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_screen/bindings/page_up_screen_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_screen/views/page_up_screen_view.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_two_screen/bindings/page_up_two_screen_binding.dart';
import 'package:flutter_mobile_halkaton/app/modules/page_up_two_screen/views/page_up_two_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_UP_SCREEN,
      page: () => PageUpScreenView(),
      binding: PageUpScreenBinding(),
    ),
    GetPage(
      name: _Paths.MAP,
      page: () => MapView(),
      binding: MapBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_UP_ONE_SCREEN,
      page: () => PageUpOneScreenView(),
      binding: PageUpOneScreenBinding(),
    ),
    GetPage(
      name: _Paths.PAGE_UP_TWO_SCREEN,
      page: () => PageUpTwoScreenView(),
      binding: PageUpTwoScreenBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.LISTE_TRAJET,
      page: () => ListeTrajetView(),
      binding: ListeTrajetBinding(),
    ),
  ];
}
