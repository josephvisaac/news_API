import 'package:flutter/material.dart';
import './screens/first.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
     
        primaryColor: Colors.grey,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => First(),
      },
    );
  }
}
