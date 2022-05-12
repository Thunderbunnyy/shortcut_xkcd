import 'package:flutter/material.dart';

import 'View/HomePage_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                  textStyle: TextStyle(
                    fontFamily: 'Montserrat',
                  )
              )
          ),
      ),
      home: HomePage(),
    );
  }
}

