import 'package:google_fonts/google_fonts.dart';
import 'package:real_state_demo/common/imports/imports.dart';

Text textStyle0({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm12,
      color: color ?? ColorsManager.lightBlackColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text textStyle0_1({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm14,
      color: color ?? ColorsManager.lightBlackColor,
      fontWeight: FontWeight.w500,
    ),
  );
}

Text textStyle1({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm20,
      color: color ?? ColorsManager.primaryColor,
      fontWeight: FontWeight.bold,
    ),
  );
}

Text textStyle2({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm22,
      color: color ?? ColorsManager.greyColor,
      fontWeight: FontWeight.w400,
    ),
  );
}

Text textStyle3({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm40,
      color: color ?? ColorsManager.blackColor,
      fontWeight: FontWeight.w400,
    ),
  );
}
Text textStyle3_1({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm40,
      color: color ?? ColorsManager.blackColor,
      fontWeight: FontWeight.bold,
    ),
  );
}