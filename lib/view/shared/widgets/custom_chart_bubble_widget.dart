import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_assistant/view/shared/palette.dart';


class CustomChatBubbleWidget extends StatelessWidget {
  const CustomChatBubbleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
      margin: EdgeInsets.symmetric(horizontal: 40.w).copyWith(top: 30.h),
      decoration: BoxDecoration(
        border: Border.all(color: Palette.borderColor),
        borderRadius: BorderRadius.circular(20)
            .copyWith(topLeft: Radius.zero,),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ).r,
        child: Text(
          'Good Morning What Task can i do for you ?',
          style: TextStyle(
            color: Palette.mainFontColor,
            fontSize: 25.sp,
            fontFamily: 'Cera Pro',
          ),
        ),
      ),
    );
  }
}
