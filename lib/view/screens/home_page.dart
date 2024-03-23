import 'package:flutter/material.dart';
import 'package:voice_assistant/view/shared/palette.dart';
import 'package:voice_assistant/view/shared/widgets/custom_chart_bubble_widget.dart';
import 'package:voice_assistant/view/shared/widgets/custom_circle_widget.dart';
import 'package:voice_assistant/view/shared/widgets/feature_container.dart';
import 'package:voice_assistant/view/shared/widgets/virtual_assistant_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Stack(
              children: [
                // Custom Circle Container....
                Center(
                  child: CustomCircleWidget(),
                ),
                //  Virtual Assistant Picture Container...
                Center(
                  child: VirtualAssistantWidget(),
                )
              ],
            ),
            // chat bubble.....
            const CustomChatBubbleWidget(),
            //...........
            Container(
              padding: const EdgeInsets.all(10).r,
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(top: 10, left: 22).r,
              child: Text(
                'Here are the New features ',
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  fontSize: 20.sp,
                  color: Palette.mainFontColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //features list container ......
            const Column(
              children: [
                // first card
                FeatureContainer(
                  color: Palette.firstSuggestionBoxColor,
                  headerText: 'ChatGPT',
                  descriptionText:
                      'A Smarter way to stay organized and informed with ChatGPT',
                ),
                // second card....
                FeatureContainer(
                    color: Palette.secondSuggestionBoxColor,
                    headerText: 'DALL-E',
                    descriptionText: 'Get inspired and stay creative with your personal assistant powered by Dall-E')
              ],
            )
          ],
        ),
      ),
    );
  }
}
