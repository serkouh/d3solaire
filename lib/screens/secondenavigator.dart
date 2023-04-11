import 'package:solaire/screens/double_page3.dart';
import 'package:solaire/screens/double_page4.dart';
import 'package:solaire/screens/page1.dart';
import 'package:solaire/screens/page2.dart';
import 'package:solaire/screens/page3.dart';
import 'package:solaire/screens/page4.dart';
import 'package:flutter/material.dart';

import 'double_page2.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final pageController = PageController();

  static List<Widget> _widgetOptions = <Widget>[
    Page1(),
    hisdoc(),
    /* double_page3(),
    double_page4(),*/
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return chuchu.Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        children: _widgetOptions,
        controller: pageController,
        onPageChanged: _onItemTapped,
      ),
      /*  body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("lib/images/download-removebg-preview (3).png"),
              color: _selectedIndex == 1
                  ? Color.fromARGB(255, 196, 196, 197)
                  : Colors.white,
            ),
            label: 'Agricole',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? Color.fromARGB(255, 196, 196, 197)
                  : Colors.white,
            ),
            label: 'Urbain',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Color.fromARGB(255, 196, 196, 197),
        onTap: (value) {
          pageController.jumpToPage(value);
          _onItemTapped(value);
        },
        backgroundColor: Colors.blue[800],
        elevation: 0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
