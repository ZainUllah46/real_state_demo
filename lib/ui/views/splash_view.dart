import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class SplashView extends StatelessWidget {
  final _controller = Get.put(SplashController());
  SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: getDeviceHeight(context) * 0.45,
          width: getDeviceWidth(context) * 0.85,
          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AssetsManager.logo), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
