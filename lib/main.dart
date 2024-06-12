import 'package:get/get.dart';
import 'package:real_state_demo/common/imports/imports.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false, title: StringsManager.appName, useInheritedMediaQuery: true,
        getPages: RoutesManager.appRoutes(), initialRoute: RouteNames.splashScreen
    );
  }
}