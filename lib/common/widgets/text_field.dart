// ignore_for_file: must_be_immutable
import 'package:flutter/services.dart';
import 'package:real_state_demo/common/imports/imports.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintName;
  final TextInputType inputType;
  final bool isEnable;
  final bool isRead;
  final int inputLines;
  final int? length;
  final Color color;
  final bool isPass;
  final double? height;
  final double? fontSize;
  late bool passwordVisibility;
  late bool? focus;
  final IconData? icon;
  final Function(String)? onChanged;
  final Function(String)? onSubmit;
  final String? Function(String?)? validatorFun;
  final Function()? onTapped;
  final List<TextInputFormatter>? inputFormatters;

  CustomTextField({
    super.key, this.controller, this.hintName, this.isPass = false,
    this.passwordVisibility = false, this.inputType = TextInputType.text, this.isEnable = true,
    this.isRead = false, this.inputLines = 1, this.length, this.color = ColorsManager.whiteColor, this.onChanged,
    this.onSubmit, this.onTapped, this.height, this.fontSize, this.validatorFun,
    this.focus, this.inputFormatters, this.icon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPass ? !widget.passwordVisibility : false,
      enabled: widget.isEnable,
      readOnly: widget.isRead,
      autofocus: widget.focus ?? false,
      maxLength: widget.length,
      keyboardType: widget.inputType,
      maxLines: widget.inputLines,
      validator: widget.validatorFun ?? (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ${widget.hintName}';
        }
        return null;
      },
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onSubmit,
      onTap: widget.onTapped,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(ValuesManager.vm30)),
          borderSide: BorderSide(color: ColorsManager.blackColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(ValuesManager.vm30)),
          borderSide: BorderSide(color: ColorsManager.blackColor),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(ValuesManager.vm30)),
          borderSide: BorderSide(color: ColorsManager.blackColor),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(ValuesManager.vm30)),
          borderSide: BorderSide(color: ColorsManager.blackColor),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(ValuesManager.vm30)),
          borderSide: BorderSide(color: ColorsManager.lightWhiteColor),
        ),
        constraints: widget.height == null ? null : BoxConstraints( maxHeight: widget.height! ),
        suffixIcon: widget.isPass ? Padding(
          padding: const EdgeInsets.only(right: ValuesManager.vm12),
          child: IconButton(
            icon: Icon(
              widget.passwordVisibility ? Icons.visibility : Icons.visibility_off,
              color: ColorsManager.lightWhiteColor,
            ),
            onPressed: () {
              setState(() {
                widget.passwordVisibility = !widget.passwordVisibility;
              });
            },
          ),
        )
        :
        Padding(
            padding: const EdgeInsets.only(right: ValuesManager.vm12),
            child: Icon(widget.icon, color: ColorsManager.lightWhiteColor)
        ),
        hintText: widget.hintName!,
        hintStyle: TextStyle(fontSize: widget.fontSize, color: ColorsManager.lightWhiteColor),
        // labelText: widget.labelTxt,
        fillColor: widget.color,
        filled: true,
        counter: const SizedBox(),
      ),
      inputFormatters: widget.inputFormatters,
    );
  }
}
