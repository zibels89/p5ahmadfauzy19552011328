import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:p5ahmadfauzy19552011328/pages/dashboard_page.dart';
import 'package:p5ahmadfauzy19552011328/pages/date_page.dart';
import 'package:p5ahmadfauzy19552011328/pages/time_page.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
            DashboardPage(),
            DatePage(),
            TimePage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _pageController.jumpToPage(index);
          },
          items: [
            BottomNavyBarItem(
              icon: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              activeColor: Colors.lightBlueAccent,
              inactiveColor: Colors.lightBlueAccent,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.date_range),
              title: Text('Tanggal'),
              activeColor: Colors.lightGreenAccent,
              inactiveColor: Colors.lightGreenAccent,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.timer),
              title: Text('Jam'),
              activeColor: Colors.limeAccent,
              inactiveColor: Colors.limeAccent,
            ),
          ]),
    );
  }
}
