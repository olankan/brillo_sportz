import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      this.height,
      this.width,
      this.backgroundColor,
      this.radius,
      this.borderColor,
      this.gradient,
      this.alignment,
      this.child,
      this.margin,
      this.padding,
      this.onTap,
      this.wantBoxShadow = false,
      this.showImage = false,
      this.imageUrl,
      this.imageScale,
      this.borderWidth});

  final double? height;
  final double? width;
  final Color? backgroundColor;
  final double? radius;
  final Color? borderColor;
  final Widget? child;
  final Gradient? gradient;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool? wantBoxShadow;
  final bool? showImage;
  final Function()? onTap;
  final String? imageUrl;
  final double? imageScale;
  final double? borderWidth;
  final Alignment? alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      alignment: alignment,
      height: height ?? 50.h,
      width: width ?? 50.w,
      decoration: BoxDecoration(
          color: backgroundColor ?? PrimaryColors.primary,
          borderRadius: BorderRadius.circular(radius ?? 40.r),
          border: Border.all(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 1),
          gradient: gradient,
          boxShadow: [
            BoxShadow(
              color: wantBoxShadow == true
                  ? PrimaryColors.black.withOpacity(0.2)
                  : Colors.transparent,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          image: showImage == true
              ? DecorationImage(
                  image: AssetImage(
                    imageUrl ?? 'assets/images/user.png',
                  ),
                  fit: BoxFit.cover,
                  scale: imageScale ?? 1)
              : null),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
            onTap: onTap,
            borderRadius: BorderRadius.circular(radius ?? 14.r),
            child: child),
      ),
    );
  }
}
