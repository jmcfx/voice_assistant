import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VirtualAssistantWidget extends StatelessWidget {
  const VirtualAssistantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 123.h,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/virtualAssistant.png'),
        ),
      ),
    );
  }
}
