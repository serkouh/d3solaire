import 'package:solaire/screens/page2.dart';
import 'package:solaire/screens/page2_fast.dart';
import 'package:flutter/material.dart';
import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;

class hisdoc extends StatefulWidget {
  const hisdoc({Key? key}) : super(key: key);

  @override
  State<hisdoc> createState() => _hisdocState();
}

class _hisdocState extends State<hisdoc> {
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
            title: const Text(/*'Alimentation'*/ 'supply'),
            backgroundColor: Colors.blue[800],
            shadowColor: Colors.blue[900],
            foregroundColor: Colors.white,
            centerTitle: true,
            /* leading: IconButton(
              icon: Icon(Icons.rating),
              onPressed: () {
                // Handle menu button press
              },
            ),
            actions: [
             
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],*/
          ),
          body: SafeArea(
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 12, 20, 0),
                  child: SegmentedTabControl(
                    // Customization of widget
                    radius: const Radius.circular(20),
                    backgroundColor: Colors.blue.shade100,
                    indicatorColor: Colors.blue.shade800,
                    tabTextColor: Colors.white70,
                    selectedTabTextColor: Colors.white,
                    squeezeIntensity: 2,
                    height: 45,
                    tabPadding: const EdgeInsets.symmetric(horizontal: 8),
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.white70),
                    // Options for selection
                    // All specified values will override the [SegmentedTabControl] setting
                    tabs: [
                      SegmentTab(
                        label: //'Calcul',
                            'Calculation',
                        backgroundColor: Color.fromARGB(255, 111, 190, 255),
                        selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                      ),
                      SegmentTab(
                        label: 'Estimation',
                        backgroundColor: Color.fromARGB(255, 111, 190, 255),
                        selectedTextColor: Color.fromARGB(255, 255, 255, 255),
                        textColor: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      Page2(),
                      page2_fast(),
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
        child:           chuchu.Scaffold(
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
