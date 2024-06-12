import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class FavoritesView extends StatelessWidget {
  final _controller = Get.put(FavoritesController());
  FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: textStyle1(text: StringsManager.favorite),
      ),
    );
  }
}
