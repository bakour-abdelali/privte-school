import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:managmentsh/Component/AppColors.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:managmentsh/screen/view/homeStudent/card.dart';
import 'package:managmentsh/screen/view/homeStudent/notication.dart';
import 'package:managmentsh/screen/view/homeStudent/page1.dart';
import 'package:managmentsh/screen/view/homeStudent/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    page1(),
    NotificationStudent(),
    CardStudent(),
    Profile(),
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
                  icon: Icons.notification_add,
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
