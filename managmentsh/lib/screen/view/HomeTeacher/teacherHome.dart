import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:managmentsh/screen/view/HomeTeacher/teacherCard.dart';
import 'package:managmentsh/screen/view/HomeTeacher/teacherProfile.dart';
import 'package:managmentsh/screen/view/HomeTeacher/teacherhomescreen.dart';

class TeacherHome extends StatefulWidget {
  const TeacherHome({super.key});

  @override
  State<TeacherHome> createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Teacherpage(),
    CardTeacher(),
    Teacherprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Appcolors.bluelight,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Appcolors.seconderyColor,
              hoverColor: Appcolors.primarycolor,
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              tabBackgroundColor: Appcolors.seconderyColor,
              color: Colors.black,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                ),
                GButton(
                  icon: LineIcons.creditCard,
                ),
                GButton(
                  icon: LineIcons.user,
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
