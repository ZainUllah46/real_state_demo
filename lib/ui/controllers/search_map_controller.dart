import 'dart:async';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class SearchMapController extends GetxController {
  final searchController = TextEditingController();
  final Completer<GoogleMapController> mapController = Completer<GoogleMapController>();
  late RxString mapStyleString = "".obs;
  Uint8List? marketImages;
  List<String> images = [AssetsManager.markerIcon, AssetsManager.markerIcon, AssetsManager.markerIcon, AssetsManager.markerIcon, AssetsManager.markerIcon];
  final List<Marker> markers = <Marker>[];
  final List<LatLng> _latLen = <LatLng>[
    const LatLng(33.32502, 73.162944),
    const LatLng(33.702443, 73.483192),
    const LatLng(33.780747, 72.736012),
    const LatLng(33.577198, 72.828888),
    const LatLng(33.880638, 73.015852),
  ];

  @override
  void onInit() {
    rootBundle.loadString(AssetsManager.mapStyle).then((string) {
      mapStyleString.value = string;
    });

    loadData();
    super.onInit();
  }

  Future<Uint8List> getImages(String path, int width) async{
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetHeight: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return(await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  loadData() async{
    for(int i=0 ;i<images.length; i++){
      final Uint8List markIcons = await getImages(images[i], 100);
      markers.add(
          Marker(
            markerId: MarkerId(i.toString()),
            icon: BitmapDescriptor.fromBytes(markIcons),
            position: _latLen[i],
            infoWindow: InfoWindow(title: 'Location: $i'),
          )
      );
    }
  }

}