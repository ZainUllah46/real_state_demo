import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class SearchView extends StatelessWidget {
  final _controller = Get.put(SearchMapController());
  SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
            compassEnabled: true,
            markers: Set<Marker>.of(_controller.markers),
            initialCameraPosition: const CameraPosition(target: LatLng(33.693812, 73.065151), zoom: 9),
            onMapCreated: (GoogleMapController controller) {
              _controller.mapController.complete(controller);
              _controller.mapController.future.then((value) {
                value.setMapStyle(_controller.mapStyleString.value);
              });
            },
          ),

          Positioned(
            top: ValuesManager.vm60,
            right: ValuesManager.vm16,
            left: ValuesManager.vm16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: getDeviceWidth(context) * 0.65,
                  child: CustomTextField(
                    controller: _controller.searchController, hintName: StringsManager.search, inputType: TextInputType.text,
                    icon: Icons.search, fontSize: ValuesManager.vm12, height: getDeviceHeight(context) * 0.065,
                  ),
                ),
                buildSpaceHorizontal(context, 0.02),
                Container(
                  height: ValuesManager.vm50,
                  width: ValuesManager.vm50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(ValuesManager.vm35),
                    color: ColorsManager.whiteColor
                  ),
                  child: const Center(child: Icon(Icons.settings),),
                ),
              ],
            )
          ),

          Positioned(
              bottom: ValuesManager.vm120,
              left: ValuesManager.vm30,
              child: Column(
                children: [
                  Container(
                    height: ValuesManager.vm50,
                    width: ValuesManager.vm50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ValuesManager.vm35),
                        color: ColorsManager.greyColor
                    ),
                    child: const Center(child: Icon(Icons.menu, color: ColorsManager.whiteColor)),
                  ),
                  buildSpaceVertical(context, 0.01),
                  Container(
                    height: ValuesManager.vm50,
                    width: ValuesManager.vm50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(ValuesManager.vm35),
                        color: ColorsManager.greyColor
                    ),
                    child: const Center(child: Icon(Icons.location_city_rounded, color: ColorsManager.whiteColor)),
                  ),
                ],
              )
          ),
        ],
      )
    );
  }
}
