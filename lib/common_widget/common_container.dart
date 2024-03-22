import 'package:flutter/material.dart';
import 'package:ui_design/common_value/common_color.dart';

class CommonContainer extends StatelessWidget {
  final double? width;
  final double? height;
  final BorderRadius? borderRadius;
  final BoxShape? shape;
  final double? borderWidth;
  final Color? borderColor;
  final Color gradientColorOne;
  final Color gradientColorTwo;
  final Widget? child;
  final Color? backgroundColor;
  final EdgeInsetsDirectional? padding;
  final EdgeInsetsDirectional? margin;
  final bool isBackgroundColor;

  const CommonContainer({
    super.key,
    this.width,
    this.height,
    this.borderRadius,
    this.shape,
    this.borderWidth,
    this.borderColor,
    this.gradientColorOne = Colors.black,
    this.gradientColorTwo = Colors.black,
    this.child, this.backgroundColor,
    this.padding = EdgeInsetsDirectional.zero,
    this.margin,
    this.isBackgroundColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: borderRadius,
          border: Border.all(
              width: borderWidth ?? 0.0,
              color: borderColor ?? CommonColor.black,
          ),
          shape: shape ?? BoxShape.rectangle,
          gradient: isBackgroundColor
              ? LinearGradient(
                  colors: [
                    gradientColorOne,
                    gradientColorTwo
                  ])
              : null
      ),
      child: child,
    );
  }
}
