import 'dart:async';
import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    isLogin();
    super.onInit();
  }

  isLogin() async {
    Timer(const Duration(seconds: 3),() => Get.toNamed(RouteNames.bottomBar) );
  }

}