import 'package:fluttertoast/fluttertoast.dart';
import 'package:real_state_demo/common/imports/imports.dart';

successToast(String title) {
  Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: ColorsManager.primaryColor,
      textColor: ColorsManager.whiteColor,
      fontSize: ValuesManager.vm16
  );
}

errorToast(String title) {
  Fluttertoast.showToast(
      msg: title,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: ColorsManager.redColor,
      textColor: ColorsManager.whiteColor,
      fontSize: ValuesManager.vm16
  );
}