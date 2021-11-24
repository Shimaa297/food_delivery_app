import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/provider/provider.dart';
import 'package:food_delivery_app/screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'help/help.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderApp>(
      create: (context)=> ProviderApp(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            centerTitle: true,
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
            elevation: 0.0,
            iconTheme: IconThemeData(
              color: Colors.green,
              size: 40.0,
            ),
            titleTextStyle: GoogleFonts.cairo(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              height: 1.2,
              fontSize: 22,
            ),
          ),
          textTheme: TextTheme(
              subtitle1: GoogleFonts.cairo(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              bodyText1: GoogleFonts.cairo(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                //fontStyle: FontStyle.italic,
                fontSize: 16,
              ),
              bodyText2: GoogleFonts.cairo(
                color: Colors.black,
                fontWeight: FontWeight.w400,
                //fontStyle: FontStyle.italic,
                fontSize: 14,
              )),
          scaffoldBackgroundColor: Colors.white
        ),
        home: SplashScreen(),
      ),
    );
  }
}


