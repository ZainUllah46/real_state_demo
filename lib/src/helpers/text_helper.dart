import 'package:google_fonts/google_fonts.dart';
import 'package:real_state_demo/common/imports/imports.dart';

Text textStyle0({required String text, Color? color, TextAlign? textAlign, int? maxLines}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.center,
    maxLines: maxLines ?? 1,
    style: GoogleFonts.roboto(
      fontSize: ValuesManager.vm12,
      color: color ?? ColorsManager.whiteColor,
      fontWeight: FontWeight.w500,
    ),
  );
}