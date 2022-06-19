import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/favorite/favoritepage.dart';
import 'package:flutter_bayeue/pages/history/historypage.dart';
import 'package:flutter_bayeue/pages/home/home_page.dart';
import 'package:flutter_bayeue/pages/profile/profilepage.dart';
import 'package:unicons/unicons.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({Key? key}) : super(key: key);

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const History(),
    const Favorite(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 247, 240, 240),
            icon: Icon(
              UniconsLine.estate,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromARGB(255, 247, 240, 240),
            icon: Icon(
              UniconsLine.invoice,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 247, 240, 240),
              icon: Icon(
                UniconsLine.favorite,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              backgroundColor: Color.fromARGB(255, 247, 240, 240),
              icon: Icon(
                UniconsLine.user_circle,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue[100],
        currentIndex: _currentIndex,
        iconSize: 40,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}
