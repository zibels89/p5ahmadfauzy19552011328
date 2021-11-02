import 'package:flutter/material.dart';
import 'package:p5ahmadfauzy19552011328/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mainpage(),
    );
  }
}
