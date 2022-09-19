import 'package:flutter/material.dart';
import 'package:split_bill/app/theme/palettes.dart';
import 'package:split_bill/app/theme/theme_helpers.dart';
import 'package:split_bill/app/theme/typography.dart';

class BaseButton extends StatelessWidget {
  const BaseButton({Key? key, this.text, this.onTap}) : super(key: key);
  final String? text;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        debugPrint('dedeeeded');
      },
      borderRadius: BorderRadius.circular(spacing(0.5)),
      child: Container(
        padding: EdgeInsets.all(spacing(1)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(spacing(0.5)),
          color: Palette.primary,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text ?? '',
                style:
                    TypoStyle.buttonText.copyWith(color: Palette.textContrast)),
          ],
        ),
      ),
    );
  }
}
