import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_assistant/view/shared/palette.dart';
import 'package:voice_assistant/view/shared/widget/custom_circle_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Voice Assistant'),
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          //virtual assistant Picture....
          Stack(
            children: [
              const Center(
                child: CustomCircleWidget(),
              ),
              Container(
                height: 123.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/virtualAssistant.png')),
                ),
              )
            ],
          ),
          // chat bubble.....
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10).r,
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30.w,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Palette.borderColor),
            ),
            child:  Text(
              'Good Morning What Task can i do for you?',
              style: TextStyle(color: Palette.mainFontColor, fontSize: 25.sp, fontFamily: 'Cera Pro '),
            ),
          ),
        ],
      ),
    );
  }
}
