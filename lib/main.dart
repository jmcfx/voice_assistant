import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:voice_assistant/view/screens/home_page.dart';
import 'package:voice_assistant/view/shared/palette.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // returns Screen Util.....
    return ScreenUtilInit(
      designSize: const Size(430.0, 932.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Voice Assistant ',
          theme: ThemeData.light(useMaterial3: true).copyWith(
          // colorScheme: const ColorScheme.light(background:Colors.red ),
           scaffoldBackgroundColor: Palette.whiteColor,
           appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Palette.whiteColor
           ) 
          ),
          home: const HomePage(),
        );
      }
    );
  }
}

