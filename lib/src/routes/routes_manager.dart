
import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class RoutesManager {
  static appRoutes() => [
    GetPage(
      name: RouteNames.splashScreen,
      page: () => SplashView(),
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade,
    ) ,
    GetPage(
      name: RouteNames.bottomBar,
      page: () => BottomBarView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.zoom,
    ),
  ];
}