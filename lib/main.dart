import 'package:flutter/material.dart';
import 'package:ved_resume_web_app/view/colors.dart';
import 'package:ved_resume_web_app/view/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: lightTheme(), darkTheme: darkTheme(),
      home: HomePage(),
    );
  }

  ThemeData lightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: UiColors.background,
        elevation: 0.0,
        iconTheme: IconThemeData(
            // color: appColors.secondary,
            ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // backgroundColor: appColors.primary.withOpacity(0.9),
        // selectedItemColor: appColors.secondary,
        unselectedItemColor: UiColors.black,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          // backgroundColor: appColors.primary,
          ),
      textTheme: TextTheme(
        headline2: TextStyle(
          fontSize: 42.0,
          color: UiColors.black,
          fontFamily: "MTCORSVA",
        ),
        headline4: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins",
          color: UiColors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 15.0,
          color: UiColors.black,
          fontFamily: "Poppins",
        ),
        bodyText2: TextStyle(
          fontSize: 17.0,
          color: UiColors.black,
          fontFamily: "Poppins",
        ),
        caption: TextStyle(
          fontSize: 14.0,
          color: UiColors.black.withOpacity(0.8),
          fontFamily: "Poppins",
        ),
        subtitle1: TextStyle(
          fontSize: 22.0,
          color: UiColors.black,
          fontFamily: "MTCORSVA",
        ),
        button: TextStyle(
          fontSize: 15.0,
          color: UiColors.black,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: IconThemeData(
          // color: appColors.secondary,
          ),
      cardTheme: CardTheme(
        elevation: 8.0,
        color: UiColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      disabledColor: UiColors.card,
      canvasColor: Colors.transparent,
      // primaryColor: appColors.primary,
      brightness: Brightness.dark,
      accentColor: UiColors.overlay,
      backgroundColor: UiColors.background,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: UiColors.darkBackground,
        elevation: 0.0,
        iconTheme: IconThemeData(
            // color: appColors.secondary,
            ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: UiColors.darkBackground.withOpacity(0.35),
        // selectedItemColor: appColors.secondary,
        unselectedItemColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: UiColors.black,
      ),
      textTheme: TextTheme(
        headline2: TextStyle(
          fontSize: 42.0,
          color: Colors.white,
          fontFamily: "MTCORSVA",
        ),
        headline4: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.w700,
          fontFamily: "Poppins",
          color: Colors.white,
        ),
        bodyText1: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
          fontFamily: "Poppins",
        ),
        bodyText2: TextStyle(
          fontSize: 17.0,
          color: Colors.white,
          fontFamily: "Poppins",
        ),
        caption: TextStyle(
          fontSize: 14.0,
          color: Colors.white.withOpacity(0.8),
          fontFamily: "Poppins",
        ),
        subtitle1: TextStyle(
          fontSize: 22.0,
          color: Colors.white,
          fontFamily: "MTCORSVA",
        ),
        button: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
      ),
      // iconTheme: IconThemeData(
      //   color: appColors.secondary,
      // ),
      cardTheme: CardTheme(
        shadowColor: UiColors.background,
        elevation: 8.0,
        color: UiColors.darkBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      disabledColor: UiColors.card2,
      canvasColor: UiColors.darkBackground,
      primaryColor: UiColors.darkBackground,
      // accentColor: appColors.secondary,
      backgroundColor: UiColors.darkBackground,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
  }
}
