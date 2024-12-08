import 'package:flutter/material.dart';
import 'package:space_ass3/Deatils_Scree.dart';
import 'package:space_ass3/Home_Screen.dart';
import 'package:space_ass3/Login_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(colorScheme: ColorScheme.dark()),
      initialRoute: LoginScreen.loginScreenId,
      routes: {
        LoginScreen.loginScreenId: (context) => LoginScreen(),
        HomeScreen.homeScreenId: (context) => HomeScreen(),
      },
    );
  }
}
