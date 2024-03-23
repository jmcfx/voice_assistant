import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_assistant/view/shared/palette.dart';


class CustomCircleWidget extends StatelessWidget {
  const CustomCircleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 120.w,
      margin: const EdgeInsets.only(top: 4).h,
      decoration: const  BoxDecoration(
        color: Palette.assistantCircleColor,
        shape: BoxShape.circle,
       

      ),
    );
  }
}
