import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class BottomBarView extends StatelessWidget {
  final _controller = Get.put(BottomBarController());
  BottomBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      body: _controller.widgets[_controller.currentIndex.value],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        width: getDeviceWidth(context) * 0.75,
        height: getDeviceHeight(context) * 0.085,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ValuesManager.vm45),
          color: ColorsManager.lightBlackColor,
        ),
        padding: const EdgeInsets.only(top: ValuesManager.vm7),
        child: Center(
          child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              fixedColor: ColorsManager.whiteColor,
              elevation: ValuesManager.vm12,
              type: BottomNavigationBarType.fixed,
              items: _controller.navigationItems,
              currentIndex: _controller.currentIndex.value,
              iconSize: 18,
              onTap: _controller.onItemTapped,
          ),
        ),
      ),
    ));
  }

}
