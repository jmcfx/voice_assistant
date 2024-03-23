import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_assistant/view/shared/palette.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer(
      {super.key,
      required this.color,
      required this.headerText,
      required this.descriptionText});
  final Color color;
  final String headerText, descriptionText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(const Radius.circular(15).r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0).copyWith(
          left: 15,
        ),
        child: Column(children: [
          //Header Text.....
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              headerText,
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Palette.blackColor,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                height: 2.sp,
              ),
            ),
          ),
          //Description Text ......
          Padding(
            padding:  EdgeInsets.only(right: 20.w),
            child: Text(
              descriptionText,
              style: const TextStyle(
                fontFamily: 'Cera Pro',
                color: Palette.blackColor,
              ),
            ),
          )
        ]),
      ),
    );
  }
}
