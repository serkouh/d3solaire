import 'dart:io';

import 'package:solaire/screens/screen_1.dart';
import 'package:solaire/screens/screen_2.dart';
import 'package:solaire/screens/secondenavigator.dart';
import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'screens/HomePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  print('running to the gym ');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(CurvedNavWidget());
}

class CurvedNavWidget extends StatefulWidget {
  @override
  CurvedNavWidgetState createState() => CurvedNavWidgetState();
}

class CurvedNavWidgetState extends State<CurvedNavWidget> {
  LocalStorage allowe = LocalStorage('allowe');
  LocalStorage id = LocalStorage('id');
  CollectionReference erer =
      FirebaseFirestore.instance.collection('technicien');
  int goto = 0;
  void initState() {
    //super.initState();
    fetchDatabaseList();
  }

  fetchDatabaseList() async {
    int connection = 0;
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connection = 1;
      }
    } on SocketException catch (_) {
      print('not connected');
    }
    if (connection == 1) {
      await allowe.ready;
      print((allowe.getItem('allowe')).toString() + '55555555555555555555');
      if (allowe.getItem('allowe').toString() != '0' &&
          allowe.getItem('allowe').toString() != '1') {
        int i = 0;
        try {
          await erer.get().then((querySnapshot) {
            for (var element in querySnapshot.docs) {
              i = i + 1;
              print('hello i m here');
            }
          });

          erer.add({
            'who': '',
            'allowe': '0',
            'id': (i + 1).toString(),
            'date': DateTime.now().toString().substring(0, 19)
          });
          setState(() {
            goto = 1;
          });
          await id.setItem('id', (i + 1).toString());
          await allowe.setItem('allowe', '0');
        } catch (e) {
          print(e.toString());
        }
      } /*else if (allowe.getItem('allowe').toString() == '1') {
      setState(() {
        goto = 1;
      });
    }*/
      else {
        await id.ready;

        print('2222222222222222222222222222222222222222222222222222222' +
            id.getItem('id').toString());
        try {
          await erer
              .where('id', isEqualTo: id.getItem('id').toString())
              .get()
              .then((querySnapshot) {
            for (var element in querySnapshot.docs) {
              if (element.get('allowe').toString() == '1') {
                setState(() {
                  goto = 1;
                });
                allowe.setItem('allowe', '1');
              } else {
                setState(() {
                  goto = 2;
                });
                allowe.setItem('allowe', '0');
              }
            }
          });
        } catch (e) {}
      }
    } else {
      print(
          '1414141414141414141414141414141414141414141414141414141414141414141414141');
      if (allowe.getItem('allowe').toString() == '1') {
        setState(() {
          goto = 1;
        });
      } else {
        setState(() {
          goto = 2;
        });
      }
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: MaterialApp(
            themeMode: ThemeMode.light,
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            darkTheme: ThemeData.dark(),
            home: // goto == 1
                MyStatefulWidget()
            /* : goto == 0
                  ? batt_data()
                  : screen_2(),*/
            ));
  }
}
