import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design/common_value/common_color.dart';
import 'package:ui_design/common_value/common_images.dart';
import 'package:ui_design/common_value/common_value.dart';
import 'package:ui_design/common_widget/common_text.dart';

class CommonTextField extends StatelessWidget {
  final String text;
  final String? hint;
  final BorderRadius? borderRadius;
  final Color borderColor;
  final Color? textColor;
  final double? fontSize;
  final double? textFieldFontSize;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final FontWeight? textFieldFontWeight;
  final TextAlign? textAlign;
  final SvgPicture? svgPicture;
  final int? maxLines;

  const CommonTextField({
    super.key,
    this.text="",
    this.hint,
    this.borderRadius,
    this.borderColor = Colors.black,
    this.textColor,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.textAlign,
    this.svgPicture, this.textFieldFontSize, this.textFieldFontWeight, this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: Spacing.xxLarge,
        // vertical: Spacing.medium,
      ),
      child: TextFormField(
          cursorColor: CommonColor.grey,
          style: TextStyle(
            color: CommonColor.white,
            fontSize: textFieldFontSize,
            fontWeight: textFieldFontWeight,
            fontFamily: fontFamily,
          ),
          maxLines: maxLines,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: ShapeBorderRadius.large,
                  borderSide: BorderSide(color: CommonColor.grey)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: ShapeBorderRadius.large,
                  borderSide: BorderSide(color: CommonColor.grey)
              ),
              hintText: hint,
              hintStyle: TextStyle(
                color: CommonColor.white,
                fontSize: textFieldFontSize,
                fontWeight: textFieldFontWeight,
                fontFamily: fontFamily,
              )
          )
      ),
    );

  }
}
