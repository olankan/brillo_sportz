
import 'package:brillo_sportz/core/theme/widgets/custom_text_style/custom_text_style.dart';
import 'package:brillo_sportz/features/interests/domain/models/interest.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InterestTile extends StatelessWidget {
  final InterestModel interests;

  const InterestTile(
      {required this.interests, super.key, this.onTap, this.isSelected});

  final Function()? onTap;
  final bool? isSelected;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(4, 0, 4, 10).r,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onTap,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Stack(children: [
                  Container(child: Image.asset(interests.imgPath!)),
                  Container(
                      // color: Colors.red,
                      child: Image.asset(
                    interests.imgPath!,
                    color: isSelected == true
                        ? Colors.black.withOpacity(0.6)
                        : Colors.transparent,
                  )),
                  isSelected == true
                      ? Center(
                          child: SizedBox(
                              height: 100.h,
                              child: Icon(
                                Icons.check,
                                color: Colors.white.withOpacity(0.8),
                                size: 50.r,
                              )))
                      : SizedBox(),
                ])),
          ),
          Text(
            interests.interest ?? 'Unknown',
            style: CustomTextStyles(context).body1BoldPoppins_16x6,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
