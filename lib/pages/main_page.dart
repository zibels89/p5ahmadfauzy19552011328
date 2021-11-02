import 'package:flutter/material.dart';

class MainpageState extends StatefulWidget {
  const MainpageState({Key? key}) : super(key: key);

  @override
  _MainpageStateState createState() => _MainpageStateState();
}

class _MainpageStateState extends State<MainpageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Menu Utama'),
      ),
    );
  }
}
