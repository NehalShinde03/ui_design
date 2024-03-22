
import 'package:flutter/material.dart';
import 'package:ui_design/common_value/common_color.dart';
import 'package:ui_design/common_value/common_value.dart';
import 'package:ui_design/common_widget/common_text.dart';

class CommonOutLineButton extends StatelessWidget {

  final String text;
  final double? fontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final VoidCallback? onPressed;

  const CommonOutLineButton({super.key, required this.text, this.fontSize, this.fontFamily, this.fontWeight, this.color, this.textAlign, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
          minimumSize: Size.zero,
          side: const BorderSide(color: CommonColor.liteIndigo,),
          padding: const EdgeInsets.symmetric(
              vertical: Spacing.xSmall,
              horizontal: Spacing.small
          )
      ),
      child: CommonText(
        text: text,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        textAlign: textAlign,
        fontFamily: fontFamily,
      ),
    )
    ;
  }
}