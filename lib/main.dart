import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/home/home_screen.dart';

void main() {
  runApp(const FoodDeliveyApp());
}

class FoodDeliveyApp extends StatelessWidget {
  const FoodDeliveyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black
          )
        )
      ),
      home: HomeScreen(),
    );
  }
}



