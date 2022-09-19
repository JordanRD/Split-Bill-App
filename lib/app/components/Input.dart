import 'package:flutter/material.dart';
import 'package:split_bill/app/theme/palettes.dart';
import 'package:split_bill/app/theme/theme_helpers.dart';

class Input extends StatelessWidget {
  Input(
      {Key? key,
      this.placeholder,
      this.startIcon,
      this.endIcon,
      this.controller})
      : super(key: key);
  final String? placeholder;
  final Widget? startIcon;
  final Widget? endIcon;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    var baseBorder = OutlineInputBorder(
        borderSide: BorderSide(
          color: Palette.secondary,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(spacing(0.5)));
    return TextField(
      controller: controller,
      cursorColor: Palette.textSecondary,
      decoration: InputDecoration(
        hintText: placeholder,
        suffixIcon: endIcon,
        contentPadding: EdgeInsets.all(
          spacing(1),
        ),
        hintStyle: TextStyle(color: Palette.textSecondary),
        disabledBorder: baseBorder,
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder,
      ),
    );
  }
}
