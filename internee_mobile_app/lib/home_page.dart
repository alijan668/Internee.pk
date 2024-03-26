import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:internee_mobile_app/home_page_view.dart';
import 'package:internee_mobile_app/saved_internships.dart';
import 'package:internee_mobile_app/user_profile.dart';

//Color color = Colors.black;

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex = 0;

  // Screens to be displayed
  final List<Widget> _screens = [
    Home_Page_View(),
    Saved_Internships(),
    User_Profile(),
  ];

  // Function to handle navigation item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: color,
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 60.0,
        color: Color(0xfff43a724),
        buttonBackgroundColor: Color(0xfff43a724),
        //backgroundColor: color,

        backgroundColor: Color(0xffff9f9f9),
        animationDuration: Duration(milliseconds: 400),
        items: [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.favorite, color: Colors.white),
          Icon(
            Icons.person,
            color: Colors.white,
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
