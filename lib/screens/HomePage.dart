import 'package:solaire/screens/page1.dart';
import 'package:solaire/screens/page2.dart';
import 'package:solaire/screens/page3.dart';
import 'package:solaire/screens/page4.dart';
import 'package:solaire/screens/screen_1.dart';
import 'package:solaire/screens/secondePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'drawer_data.dart';
import 'Menupage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeFormState createState() => _HomeFormState();
}

class _HomeFormState extends State<HomePage> {
  Widget Getscreen() {
    if (currentItem.title == 'pompage') {
      return Page1();
    } else if (currentItem.title == 'Batiment offgrid') {
      return Page2();
    } else if (currentItem.title == 'Batiment Ongrid') {
      return Page3();
    } else if (currentItem.title == 'profile') {
      return page4();
    } else {
      // print(currentItem.title);
      return batt_data();
    }
  }

  MenuIteme currentItem = MenuItems.pompage;
  @override
  Widget build(BuildContext context) => ZoomDrawer(
      menuBackgroundColor: Colors.indigo,
      showShadow: true,
      drawerShadowsBackgroundColor: Colors.orangeAccent,
      borderRadius: 40,
      menuScreen: Builder(
          builder: (context) => Menupage(
              currentItem: currentItem,
              OnSelectedItem: (item) {
                setState(() {
                  currentItem = item;
                  ZoomDrawer.of(context)!.close();
                });
              })),
      mainScreen: Getscreen());
}
