import 'package:flutter/material.dart';
import 'package:shoping_app/Home_page.dart';

void main(List<String> args) {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shoping App",
      theme: ThemeData(
        // inputDecoration for all textField in the app
        inputDecorationTheme: const InputDecorationTheme(
          // clearing all default border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide.none,
          ),

          // style for hint text in the textField

          hintStyle: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),

          // setting overall color for icon in the textFields in the App
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
        ),
        fontFamily: "lato",
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(254, 206, 1, 1),
        ),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          bodySmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Home_page(),
    );
  }
}
