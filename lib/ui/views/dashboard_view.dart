import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class DashboardView extends StatelessWidget {
  final _controller = Get.put(DashboardController());
  DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ColorsManager.bgColor, ColorsManager.lightBrownColor],
              begin: FractionalOffset(0.0, 0.0), end: FractionalOffset(1.0, 0.0), stops: [0.0, 1.0], tileMode: TileMode.clamp
          ),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSpaceVertical(context, 0.065),
              topAppBar(context),
              middleSection(context),
              buildSpaceVertical(context, 0.04),
              bottomSection(context),
              buildSpaceVertical(context, 0.1),
            ],
          ),
        ),
      ),
    );
  }

  topAppBar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: getDeviceWidth(context) * 0.04, left: getDeviceWidth(context) * 0.02),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Opacity(
            opacity: 0.5,
            child: Container(
              height: getDeviceHeight(context) * 0.045,
              width: getDeviceWidth(context) * 0.33,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ValuesManager.vm10),
                  color: ColorsManager.whiteColor
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.location_on, color: ColorsManager.lightBlackColor),
                  textStyle0(text: StringsManager.saint, color: ColorsManager.lightBlackColor),
                ],
              ),
            ),
          ),
          const CircleAvatar(
            radius: ValuesManager.vm25,
            backgroundImage: AssetImage(AssetsManager.profile)
          ),
        ],
      ),
    );
  }

  middleSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSpaceVertical(context, 0.02),
          textStyle2(text: StringsManager.homeTitleOne),
          buildSpaceVertical(context, 0.003),
          textStyle3(text: StringsManager.homeTitleTwo, maxLines: 2, textAlign: TextAlign.start),
          buildSpaceVertical(context, 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: getDeviceWidth(context) * 0.47,
                width: getDeviceWidth(context) * 0.47,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(ValuesManager.vm120), color: ColorsManager.primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textStyle1(text: StringsManager.buy, color: ColorsManager.whiteColor),
                    textStyle3_1(text: StringsManager.buyNo, color: ColorsManager.whiteColor),
                    textStyle0(text: StringsManager.offers, color: ColorsManager.whiteColor),
                  ],
                ),
              ),
              Container(
                height: getDeviceWidth(context) * 0.47,
                width: getDeviceWidth(context) * 0.44,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(ValuesManager.vm20), color: ColorsManager.whiteColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textStyle1(text: StringsManager.rent, color: ColorsManager.lightBlackColor),
                    textStyle3_1(text: StringsManager.rentNo, color: ColorsManager.lightBlackColor),
                    textStyle0(text: StringsManager.offers, color: ColorsManager.lightBlackColor),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  bottomSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getDeviceWidth(context) * 0.02),
      child: StaggeredGrid.count(
        crossAxisCount: 4, mainAxisSpacing: ValuesManager.vm10, crossAxisSpacing: ValuesManager.vm10,
        children:  [
          StaggeredGridTile.count(
            crossAxisCellCount: 5,
            mainAxisCellCount: 2,
            child: gridCardWidget(AssetsManager.img2, ValuesManager.vm35, ValuesManager.vm35, true),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 4,
            child: gridCardWidget(AssetsManager.img4, ValuesManager.vm5, ValuesManager.vm5, false)
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: gridCardWidget(AssetsManager.img1, ValuesManager.vm5, ValuesManager.vm5, false)
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: gridCardWidget(AssetsManager.img6, ValuesManager.vm5, ValuesManager.vm5, false)
          ),

        ],
      ),
    );
  }

  gridCardWidget(String image, double rightMargin, double leftMargin, bool isFull){
    return Stack(
      children: [
        Positioned(
          right: 0, left: 0, bottom: 0, top: 0,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(ValuesManager.vm8),
              child: Image.asset(image, fit: BoxFit.fill)
          ),
        ),
        Positioned(
            bottom: ValuesManager.vm14,
            left: leftMargin,
            right: rightMargin,
            child: Container(
              decoration: BoxDecoration(
                color: ColorsManager.lightBrownColor.withOpacity(0.6),
                borderRadius: BorderRadius.circular(ValuesManager.vm35),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  isFull ? textStyle1(text: StringsManager.address, color: ColorsManager.lightBlackColor) :
                  textStyle0_1(text: StringsManager.address, color: ColorsManager.lightBlackColor) ,
                  Container(
                    height: ValuesManager.vm45,
                    width: ValuesManager.vm45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ValuesManager.vm35),
                        color: ColorsManager.whiteColor
                    ),
                    child: const Center(child: Icon(Icons.arrow_forward_ios_rounded)),
                  ),
                ],
              ),
            )
        ),
      ],
    );
  }
}
