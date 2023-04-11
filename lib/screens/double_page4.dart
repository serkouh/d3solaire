import 'package:solaire/screens/page2.dart';
import 'package:solaire/screens/page2_fast.dart';
import 'package:solaire/screens/page3%20_fast.dart';
import 'package:solaire/screens/page3.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;
import 'package:solaire/screens/page4.dart';
import 'package:solaire/screens/page4_fast.dart';

class double_page4 extends StatefulWidget {
  const double_page4({Key? key}) : super(key: key);

  @override
  State<double_page4> createState() => double_page4State();
}

class double_page4State extends State<double_page4> {
  PageController _controller = PageController(
    initialPage: 0,
  );
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Provide the [TabController]
      home: DefaultTabController(
        length: 2,
        animationDuration: Duration(milliseconds: 800),
        child: chuchu.Scaffold(
          appBar: AppBar(
            title: const Text('Hybride'),
          ),
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                  child: SegmentedTabControl(
                    // Customization of widget

                    radius: const Radius.circular(20),
                    backgroundColor: Colors.grey.shade300,
                    indicatorColor: Colors.orange.shade200,
                    tabTextColor: Colors.black45,
                    selectedTabTextColor: Colors.white,
                    squeezeIntensity: 2,
                    height: 45,
                    tabPadding: const EdgeInsets.symmetric(horizontal: 8),
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    // Options for selection
                    // All specified values will override the [SegmentedTabControl] setting
                    tabs: [
                      SegmentTab(
                        label: 'Calcul',
                        backgroundColor: Colors.blue.shade100,
                        selectedTextColor: Colors.black45,
                        textColor: Colors.black26,
                      ),
                      SegmentTab(
                        label: 'Estimation',
                        // For example, this overrides [indicatorColor] from [SegmentedTabControl]
                        color: Color.fromARGB(255, 204, 36, 36),
                      ),
                    ],
                  ),
                ),
                // Sample pages
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      page4(),
                      page4_fast(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
/*
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:           Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(74.0), // here the desired height
              child: AppBar(
                backgroundColor: Color.fromARGB(255, 199, 112, 20),
                title: Text(''),
                bottom: TabBar(
                  overlayColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 227, 43, 40)),
                  indicatorPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                  labelColor: Colors.white,
                  //overlayColor: MaterialStateProperty.all(Colors.black),
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Creates border
                    color: Color.fromARGB(255, 216, 74, 13),
                  ),
                  tabs: const [
                    Tab(
                      icon: Icon(Icons.flight),
                      text: ' open',
                    ),
                    Tab(
                      icon: Icon(Icons.directions_transit),
                      text: ' encours',
                    ),
                    Tab(
                      icon: Icon(Icons.directions_transit),
                      text: ' later',
                    ),
                    /*Tab(
                      icon: Icon(Icons.flight),
                      text: ' assistance',
                    ),
                    Tab(
                      icon: Icon(Icons.directions_transit),
                      text: ' prestation',
                    ),*/
                  ],
                ),
              ),
            ),
            body: const TabBarView(
              children: [
                hisD(),
                hisD2(),
                reclam(),
                /*const hisBC(),
                const hisfac(),
                const hisnsit(),*/
              ],
            )));
  }*/
}
