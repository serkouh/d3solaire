import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:solaire/screens/cosum.dart';
import 'package:solaire/screens/page1View.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;

import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Page1State createState() => Page1State();
}

class Page1State extends State<Page1>
    with AutomaticKeepAliveClientMixin<Page1> {
  List<Trip> table1 = [
    Trip('tele et radio', '100', '0', '0', '1', '100', '0', '0'),
    Trip('chargeurs', '70', '0', '0', '1', '140', '0', '0'),
    Trip('refrigirateur', '150', '0', '0', '4', '600', '0', '0'),
    Trip('eclairage', '100', '0', '0', '1', '100', '0', '0'),
    Trip('congelateur', '250', '0', '0', '4', '1000', '0', '0'),
    Trip('Climatiseur', '1200', '0', '0', '4', '0', '0', '0'),
    Trip('Electromenagers', '500', '0', '0', '4', '2000', '0', '0'),
    Trip('Machine a lavers', '600', '0', '0', '4', '2400', '0', '0'),
    Trip('Panini', '1400', '0', '0', '1', '1400', '0', '0'),
    Trip('Cheffaux', '1200', '0', '0', '1', '0', '0', '0'),
    Trip('Four electric', '2600', '0', '0', '1', '1600', '0', '0'),
  ];
  int _selectedTabIndex = 0;

  void _onTabChanged(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  List<Tab2> table2 = [
    Tab2('1500', '5', '4.2', '9', '1980'),
    Tab2('2200', '5.8', '5.5', '12', '2420'),
    Tab2('4000', '13.5', '9.5', '16.2', '2590'),
    Tab2('5500', '19.5', '14', '23.9', '2950'),
    Tab2('7500', '25', '18.5', '30.6', '3500'),
    Tab2('11000', '32', '25', '39.2', '4350'),
    Tab2('15000', '40', '32', '49', '5550'),
    Tab2('18500', '47', '38', '50', '6480'),
    Tab2('22000', '51', '45', '60', '7550'),
    Tab2('30000', '70', '60', '81', '10550'),
    Tab2('37000', '80', '75', '90', '13150'),
    Tab2('45000', '98', '92', '130', '16550'),
    Tab2('55000', '128', '115', '150', '18950'),
  ];
  List<Tab2> table3 = [
    Tab2('00', '0', '0', '0', '0'),
    Tab2('2200', '5.8', '5.5', '12', '2420'),
    Tab2('4000', '13.5', '9.5', '16.2', '2590'),
    Tab2('5500', '19.5', '14', '23.9', '2950'),
    Tab2('7500', '25', '18.5', '30.6', '3500'),
    Tab2('11000', '32', '25', '39.2', '4350'),
    Tab2('15000', '40', '32', '49', '5550'),
    Tab2('18000', '47', '38', '50', '6480'),
    Tab2('22000', '51', '45', '60', '7550'),
    Tab2('30000', '70', '60', '81', '10550'),
    Tab2('37000', '80', '75', '90', '13150'),
    Tab2('45000', '98', '92', '130', '16550'),
    Tab2('55000', '128', '115', '150', '18950'),
  ];
  //FToast fToast = FToast();
  JustTheController ctr = new JustTheController();
  void initState() {
    super.initState();

    //fToast = FToast();
    // fToast.init(context);
  }

  int show_result1 = 0;
  bool isSwitched = false;
  int _tabTextIconIndexSelected = 0;
  int _tabTextIconIndexSelected2 = 0;
  int show_result2 = 0;
  int show_result3 = 0;
  String text1 = 'show result';
  String text2 = 'show result';
  String text3 = 'show result';
  int page = 0;
  int _activeStepIndex2 = 0;
  double rendement2 = 0.6;
  double ch2 = 2.725;
  String puissance1 = '';
  String c_entre1 = '';
  String c_sortie1 = '';
  String c_max1 = '';
  String plage_tensien1 = '';
  String nbr_ = '';
  String nbr_string = '';
  int _activeStepIndex = 0;
  double rendement = 0.6;
  double ch = 2.725;
  final myController = TextEditingController();
  final RoundedLoadingButtonController _btnController =
      RoundedLoadingButtonController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  TextEditingController PC = TextEditingController();
  TextEditingController Voc = TextEditingController();
  TextEditingController Icc = TextEditingController();

  String puissance2 = '';
  String c_entre2 = '';
  String c_sortie2 = '';
  String c_max2 = '';
  String plage_tensien2 = '';
  String nbr_2 = '';
  String nbr_string2 = '';
  TextEditingController name2 = TextEditingController();
  TextEditingController email2 = TextEditingController();
  TextEditingController pass2 = TextEditingController();
  TextEditingController address2 = TextEditingController();
  TextEditingController pincode2 = TextEditingController();
  TextEditingController PC2 = TextEditingController();
  TextEditingController Voc2 = TextEditingController();
  TextEditingController Icc2 = TextEditingController();
  int _activeStepIndex3 = 0;
  double rendement3 = 0.6;
  double ch3 = 2.725;
  double pouce = 0;
  int selectedTabIndex = 0;

  String puissance3 = '';
  String c_entre3 = '';
  String c_sortie3 = '';
  String c_max3 = '';
  String plage_tensien3 = '';
  String nbr_3 = '';
  String nbr_string3 = '';
  TextEditingController name3 = TextEditingController();
  TextEditingController email3 = TextEditingController();
  TextEditingController pass3 = TextEditingController();
  TextEditingController address3 = TextEditingController();
  TextEditingController pincode3 = TextEditingController();
  TextEditingController PC3 = TextEditingController();
  TextEditingController Voc3 = TextEditingController();
  TextEditingController Icc3 = TextEditingController();
/*
  _showToastx(String msg) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color.fromARGB(255, 234, 44, 30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.cancel_outlined),
          SizedBox(
            width: 12.0,
          ),
          Text(msg),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );
  }*/

  double height1() {
    if (_activeStepIndex == 0) {
      return 400;
    } else if (_activeStepIndex == 1) {
      return 400;
    } else {
      return 400;
    }
  }

  double height2() {
    if (_activeStepIndex2 == 0) {
      return 400;
    } else if (_activeStepIndex2 == 1) {
      return 400;
    } else {
      return 400;
    }
  }

  double height3() {
    if (_activeStepIndex3 == 0) {
      return 400;
    } else if (_activeStepIndex3 == 1) {
      return 400;
    } else {
      return 400;
    }
  }

  remplir1() {
    print('aaaaaaaaaaaaaaa' + name.text);
    setState(() {
      if (name.text != '') {
        if (double.parse(name.text) <= 6) {
          pouce = 1.25;
        } else if (double.parse(name.text) <= 14) {
          pouce = 2;
        } else if (double.parse(name.text) <= 33) {
          pouce = 3;
        } else if (double.parse(name.text) <= 58) {
          pouce = 4;
        } else if (double.parse(name.text) <= 90) {
          pouce = 5;
        } else if (double.parse(name.text) <= 130) {
          pouce = 6;
        }
      } else {
        pouce = 0;
      }
    });
    double temp = 0;
    for (Tab2 T in table2) {
      if (double.parse(pass.text.replaceAll(',', '.')) <
          double.parse(T.P_en_watt)) {
        setState(() {
          puissance1 = T.P_en_watt;
          c_entre1 = T.crt_DCmax;
          c_sortie1 = T.crt_sortie;
          c_max1 = T.crt_entree;
          nbr_ = ((double.parse(pass.text.replaceAll(',', '.')) * 1.3) /
                  double.parse(PC.text.replaceAll(',', '.')))
              .toStringAsFixed(2);
          print(nbr_.toString() + 'bbbbbbbbbbbbbbbbbbbbbbbbbb');

          /*  int.parse(nbr_) % 2 == 0
              ? nbr_ = (int.parse(nbr_) + 2).toString()
              : nbr_ = (int.parse(nbr_) + 1).toString();*/
          nbr_string = ((double.parse(nbr_) *
                      double.parse(Voc.text.replaceAll(',', '.'))) /
                  650)
              .toStringAsFixed(2);
          print(nbr_string.toString() + 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');

          if ((nbr_string[nbr_string.length - 2] == '1' ||
                  nbr_string[nbr_string.length - 2] == '0' ||
                  nbr_string[nbr_string.length - 2] == '2') &&
              double.parse(nbr_string) >= 1) {
            nbr_string = double.parse(double.parse(nbr_string)
                    .toStringAsFixed(2)
                    .substring(0,
                        double.parse(nbr_string).toStringAsFixed(2).length - 3))
                .toStringAsFixed(0);
          } else {
            nbr_string = (double.parse(double.parse(nbr_string)
                        .toStringAsFixed(2)
                        .substring(
                            0,
                            double.parse(nbr_string).toStringAsFixed(2).length -
                                3)) +
                    1)
                .toStringAsFixed(0);
          }
          temp = double.parse(nbr_) / double.parse(nbr_string);

          nbr_ =
              (double.parse(temp.toStringAsFixed(0)) * double.parse(nbr_string))
                  .toStringAsFixed(0);
          print(temp.toString() + 'ccccccccccccccccccccccccccccc');
        });
        return;
      }
    }
    setState(() {
      puissance1 = 'unvalid puissance';
      c_entre1 = 'unvalid puissance';
      c_sortie1 = 'unvalid puissance';
      c_max1 = 'unvalid puissance';
      nbr_ = 'unvalid puissance';
      nbr_string = 'unvalid puissance';
    });
  }

  remplir2() {
    for (Tab2 T in table2) {
      if (double.parse(pass2.text.replaceAll(',', '.')) <
          double.parse(T.P_en_watt)) {
        setState(() {
          puissance2 = T.P_en_watt;
          c_entre2 = T.crt_entree;
          c_sortie2 = T.crt_sortie;
          c_max2 = T.crt_DCmax;
        });
        return;
      }
    }
    setState(() {
      puissance2 = 'unvalid puissance';
      c_entre2 = 'unvalid puissance';
      c_sortie2 = 'unvalid puissance';
      c_max2 = 'unvalid puissance';
    });
  }

  remplir3() {
    for (Tab2 T in table2) {
      if (double.parse(pass3.text.replaceAll(',', '.')) <
          double.parse(T.P_en_watt)) {
        setState(() {
          puissance3 = T.P_en_watt;
          c_entre3 = T.crt_entree;
          c_sortie3 = T.crt_sortie;
          c_max3 = T.crt_DCmax;
        });
        return;
      }
    }
    setState(() {
      puissance3 = 'unvalid puissance';
      c_entre3 = 'unvalid puissance';
      c_sortie3 = 'unvalid puissance';
      c_max3 = 'unvalid puissance';
    });
  }

  // Container stepList() =>
  /*   Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Puissance'),
          content:*/

  /*   Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('tableau'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text('puissance : ' + puissance1),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt entree : ' + c_entre1),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt sortie : ' + c_sortie1),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt Dmax : ' + c_max1),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('plage de tension : 300 - 750 '),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name.text.replaceAll(',', '.')}'),
                Text('Email: ${email.text.replaceAll(',', '.')}'),
                const Text('Password: *****'),
                Text('Address : ${address.text.replaceAll(',', '.')}'),
                Text('PinCode : ${pincode.text.replaceAll(',', '.')}'),
              ],
            )))*/

  List<Step> stepList2() => [
        Step(
          state:
              _activeStepIndex2 <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex2 >= 0,
          title: const Text('Puissance'),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.99,
            child: Column(
              children: [
                Row(children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            controller: name2,
                            onChanged: (input) {
                              if (name2.text.replaceAll(',', '.') != '' &&
                                  email2.text.replaceAll(',', '.') != '') {
                                setState(() {
                                  pass2.text = ((double.parse(name2.text
                                                  .replaceAll(',', '.')) *
                                              double.parse(email2.text
                                                  .replaceAll(',', '.')) *
                                              ch) /
                                          rendement)
                                      .toStringAsFixed(2);
                                });
                                remplir1();
                              }
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'debit horaire	',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            onChanged: (input) {
                              if (name2.text.replaceAll(',', '.') != '' &&
                                  email2.text.replaceAll(',', '.') != '') {
                                setState(() {
                                  pass2.text = (double.parse(
                                              name2.text.replaceAll(',', '.')) *
                                          double.parse(
                                              email2.text.replaceAll(',', '.')))
                                      .toStringAsFixed(2);
                                });
                                remplir2();
                              }
                            },
                            controller: email2,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Hmt',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            controller: pass2,
                            keyboardType: TextInputType.number,
                            //    obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'puissance',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      if (show_result2 == 0)
                        TextButton(
                          onPressed: () {
                            if (pass2.text.replaceAll(',', '.') != '') {
                              remplir1();

                              setState(() {
                                show_result2 = 1;
                                text2 = 'hide results';
                              });
                            } else {
                              Fluttertoast.showToast(
                                msg: "THE toast message",
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          },
                          child: Text(text2),
                        ),
                      if (show_result2 == 1)
                        TextButton(
                          onPressed: () {
                            remplir2();

                            setState(() {
                              show_result2 = 0;
                              text2 = 'show results';
                            });
                          },
                          child: Text(text2),
                        ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  if (show_result2 == 1)
                    Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: Column(children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text('puissance           :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt entree           :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt sortie             :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt Dmax             :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('plage de tension :  '),
                          const SizedBox(
                            height: 5,
                          ),
                        ])),
                  if (show_result2 == 1)
                    Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(puissance2),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_entre2),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_sortie2),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_max2),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('300 - 750 '),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ))
                ])
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('tableau'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text('puissance : ' + puissance2),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt entree : ' + c_entre2),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt sortie : ' + c_sortie2),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt Dmax : ' + c_max2),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('plage de tension : 300 - 750 '),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex2 >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name2.text.replaceAll(',', '.')}'),
                Text('Email: ${email2.text.replaceAll(',', '.')}'),
                const Text('Password: *****'),
                Text('Address : ${address2.text.replaceAll(',', '.')}'),
                Text('PinCode : ${pincode2.text.replaceAll(',', '.')}'),
              ],
            )))
      ];

  List<Step> stepList3() => [
        Step(
          state:
              _activeStepIndex3 <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex3 >= 0,
          title: const Text('Puissance'),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.99,
            child: Column(
              children: [
                Row(children: [
                  Column(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            controller: name3,
                            onChanged: (input) {
                              if (name3.text.replaceAll(',', '.') != '' &&
                                  email3.text.replaceAll(',', '.') != '') {
                                setState(() {
                                  pass3.text = ((double.parse(name3.text
                                                  .replaceAll(',', '.')) *
                                              double.parse(email3.text
                                                  .replaceAll(',', '.')) *
                                              ch) /
                                          rendement)
                                      .toStringAsFixed(2);
                                });
                                remplir3();
                              }
                            },
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'debit horaire	',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            onChanged: (input) {
                              if (name3.text.replaceAll(',', '.') != '' &&
                                  email3.text.replaceAll(',', '.') != '') {
                                setState(() {
                                  pass3.text = (double.parse(
                                              name3.text.replaceAll(',', '.')) *
                                          double.parse(
                                              email3.text.replaceAll(',', '.')))
                                      .toStringAsFixed(2);
                                });
                                remplir3();
                              }
                            },
                            controller: email3,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Hmt',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            controller: pass3,
                            keyboardType: TextInputType.number,
                            //    obscureText: true,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'puissance',
                            ),
                          )),
                      const SizedBox(
                        height: 8,
                      ),
                      if (show_result3 == 0)
                        TextButton(
                          onPressed: () {
                            if (pass.text.replaceAll(',', '.') != '') {
                              remplir1();

                              setState(() {
                                show_result3 = 1;
                                text3 = 'hide results';
                              });
                            } else {
                              Fluttertoast.showToast(
                                msg: "THE toast message",
                                toastLength: Toast.LENGTH_SHORT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black,
                                textColor: Colors.white,
                                fontSize: 16.0,
                              );
                            }
                          },
                          child: Text(text3),
                        ),
                      if (show_result1 == 1)
                        TextButton(
                          onPressed: () {
                            remplir3();

                            setState(() {
                              show_result3 = 0;
                              text3 = 'show results';
                            });
                          },
                          child: Text(text3),
                        ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  if (show_result3 == 1)
                    Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: Column(children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text('puissance           :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt entree           :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt sortie             :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('crt Dmax             :  '),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('plage de tension :  '),
                          const SizedBox(
                            height: 5,
                          ),
                        ])),
                  if (show_result1 == 1)
                    Container(
                        width: MediaQuery.of(context).size.width * 0.22,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 8,
                            ),
                            Text(puissance3),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_entre3),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_sortie3),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(c_max3),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('300 - 750 '),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ))
                ])
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('tableau'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text('puissance : ' + puissance3),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt entree : ' + c_entre3),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt sortie : ' + c_sortie3),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('crt Dmax : ' + c_max3),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('plage de tension : 300 - 750 '),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex3 >= 2,
            title: const Text('Confirm'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Name: ${name3.text.replaceAll(',', '.')}'),
                Text('Email: ${email3.text.replaceAll(',', '.')}'),
                const Text('Password: *****'),
                Text('Address : ${address3.text.replaceAll(',', '.')}'),
                Text('PinCode : ${pincode3.text.replaceAll(',', '.')}'),
              ],
            )))
      ];
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return chuchu.Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Pompage'),
          backgroundColor: Color.fromARGB(255, 25, 83, 163),
          shadowColor: Color.fromARGB(255, 25, 83, 163),
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
        floatingActionButton: FloatingActionButton(
          tooltip: 'delete',
          child: Icon(
            Icons.delete_sweep,
            color: Colors.white,
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return CupertinoAlertDialog(
                    title: Text(''),
                    content: Text('vous voulez renitialiser tout les champs ?'),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            setState(() {
                              show_result1 = 0;
                              isSwitched = false;
                              _tabTextIconIndexSelected = 0;
                              show_result2 = 0;
                              show_result3 = 0;
                              text1 = 'show result';
                              text2 = 'show result';
                              text3 = 'show result';
                              page = 0;
                              _activeStepIndex2 = 0;
                              rendement2 = 0.6;
                              ch2 = 2.725;
                              puissance1 = '';
                              c_entre1 = '';
                              c_sortie1 = '';
                              c_max1 = '';
                              plage_tensien1 = '';
                              nbr_ = '';
                              nbr_string = '';
                              _activeStepIndex = 0;
                              rendement = 0.6;
                              ch = 2.725;
                              myController.text = '';

                              name.text = '';
                              email.text = '';
                              pass.text = '';
                              address.text = '';
                              pincode.text = '';
                              PC.text = '';
                              Voc.text = '';
                              Icc.text = '';

                              puissance2 = '';
                              c_entre2 = '';
                              c_sortie2 = '';
                              c_max2 = '';
                              plage_tensien2 = '';
                              nbr_2 = '';
                              nbr_string2 = '';
                              /* TextEditingController name2 = TextEditingController();
                  TextEditingController email2 = TextEditingController();
                  TextEditingController pass2 = TextEditingController();
                  TextEditingController address2 = TextEditingController();
                  TextEditingController pincode2 = TextEditingController();
                  TextEditingController PC2 = TextEditingController();
                  TextEditingController Voc2 = TextEditingController();
                  TextEditingController Icc2 = TextEditingController();
                  int _activeStepIndex3 = 0;
                  double rendement3 = 0.6;
                  double ch3 = 2.725;

                  String puissance3 = '';
                  String c_entre3 = '';
                  String c_sortie3 = '';
                  String c_max3 = '';
                  String plage_tensien3 = '';
                  String nbr_3 = '';
                  String nbr_string3 = '';
                  TextEditingController name3 = TextEditingController();
                  TextEditingController email3 = TextEditingController();
                  TextEditingController pass3 = TextEditingController();
                  TextEditingController address3 = TextEditingController();
                  TextEditingController pincode3 = TextEditingController();
                  TextEditingController PC3 = TextEditingController();
                  TextEditingController Voc3 = TextEditingController();
                  TextEditingController Icc3 = TextEditingController();*/
                            });
                            Navigator.pop(context); //close Dialog
                          },
                          child: Text('oui')),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context); //close Dialog
                        },
                        child: Text('non'),
                      )
                    ],
                  );
                });
          },
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                    child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Column(
                    children: [
                      /*     Center(
                        child: Container(
                          width: 125,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 0, 0, 0)
                                    .withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 2,
                                offset: const Offset(
                                    0, 5), // changes position of shadow
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: LiteRollingSwitch(
                            width: 115,
                            value: isSwitched,
                            textOn: 'INVT',
                            textOff: 'VEICHI',
                            colorOn: Color.fromARGB(255, 212, 180, 36),
                            colorOff: Color.fromARGB(255, 228, 118, 67),
                            iconOn: Icons.check,
                            textOnColor: Color.fromARGB(255, 255, 255, 255),
                            textOffColor: Color.fromARGB(255, 255, 255, 255),
                            iconOff: Icons.power_settings_new,
                            animationDuration: Duration(milliseconds: 800),
                            onChanged: (bool state) {
                              print('turned ${(state) ? 'yes' : 'no'}');
                              isSwitched = state;
                            },
                            onDoubleTap: (bool state) {
                              print('turned ${(state) ? 'yes' : 'no'}');
                              isSwitched = state;
                            },
                            onSwipe: (bool state) {
                              print('turned ${(state) ? 'yes' : 'no'}');
                              isSwitched = state;
                            },
                            onTap: (bool state) {
                              print('turned ${(state) ? 'yes' : 'no'}');
                              isSwitched = state;
                            },
                          ),
                        ),
                      ),*/
                      ToggleSwitch(
                        inactiveFgColor: Colors.white,
                        activeFgColor: Colors.white,
                        inactiveBgColor: Color.fromARGB(255, 174, 207, 234),
                        activeBorders: [
                          Border.all(
                            color: Color.fromARGB(255, 25, 83, 163),
                            width: 3.0,
                          ),
                          Border.all(
                            color: Color.fromARGB(255, 25, 83, 163),
                            width: 3.0,
                          ),
                        ],
                        animationDuration: 250,
                        isVertical: true,
                        minWidth: 150.0,
                        radiusStyle: true,
                        cornerRadius: 20.0,
                        initialLabelIndex: _tabTextIconIndexSelected,
                        activeBgColors: [
                          [
                            Color.fromARGB(255, 25, 83, 163),
                          ],
                          [
                            Color.fromARGB(255, 25, 83, 163),
                          ],
                        ],
                        labels: [
                          'Calcul',
                          'Estimation',
                        ],
                        onToggle: (index) {
                          setState(() {
                            _tabTextIconIndexSelected = index!;
                          });
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Container(
                          constraints: BoxConstraints(
                            minWidth: 0,
                            maxHeight: 40,
                            maxWidth:
                                MediaQuery.of(context).size.width * 0.66 + 5,
                          ),
                          width: MediaQuery.of(context).size.width * 0.66 + 5,
                          child: Center(
                            child: CustomToggleTab(
                              tabs: ['INVT', 'VEICHI', 'Sofa'],
                              isSelectedList: [
                                _tabTextIconIndexSelected2 == 0,
                                _tabTextIconIndexSelected2 == 1,
                                _tabTextIconIndexSelected2 == 2,
                                _tabTextIconIndexSelected2 == 3,
                              ],
                              onTabChanged: (index) {
                                setState(() {
                                  _tabTextIconIndexSelected2 = index;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (_tabTextIconIndexSelected == 0)
                        Container(
                          width: MediaQuery.of(context).size.width * 0.42,
                          child: TextField(
                            onChanged: (input) {
                              if (name.text.replaceAll(',', '.') != '' &&
                                  email.text.replaceAll(',', '.') != '') {
                                setState(() {
                                  pass.text = ((double.parse(name.text
                                                  .replaceAll(',', '.')) *
                                              double.parse(email.text
                                                  .replaceAll(',', '.')) *
                                              ch) /
                                          rendement)
                                      .toStringAsFixed(2);
                                });
                                remplir1();
                              }
                            },
                            controller: email,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Hmt',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              prefixIcon: ImageIcon(
                                AssetImage(
                                    "lib/images/03cb9cd2-efc9-4082-ac91-0c746434c072-removebg-preview.png"),
                                color: Colors.green,
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 40),
                            ),
                          ),
                        ),
                      if (_tabTextIconIndexSelected == 0)
                        const SizedBox(
                          height: 8,
                        ),
                      if (_tabTextIconIndexSelected == 0)
                        Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            child: Row(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: TextField(
                                    controller: name,
                                    onChanged: (input) {
                                      if (name.text.replaceAll(',', '.') !=
                                              '' &&
                                          email.text.replaceAll(',', '.') !=
                                              '') {
                                        setState(() {
                                          pass.text = ((double.parse(name.text
                                                          .replaceAll(
                                                              ',', '.')) *
                                                      double.parse(email.text
                                                          .replaceAll(
                                                              ',', '.')) *
                                                      ch) /
                                                  rendement)
                                              .toStringAsFixed(2);
                                        });
                                        remplir1();
                                      }
                                    },
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.blue),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      labelText: 'debit horaire',
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                      prefixIcon: ImageIcon(
                                        AssetImage("lib/images/debit.png"),
                                        color: Color.fromARGB(255, 25, 83, 163),
                                      ),
                                      prefixIconConstraints:
                                          BoxConstraints(minWidth: 40),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: (MediaQuery.of(context).size.width *
                                      0.12),
                                  height: 30,
                                  child: JustTheTooltip(
                                    borderRadius: BorderRadius.circular(30),
                                    backgroundColor:
                                        Color.fromARGB(255, 25, 83, 163),
                                    preferredDirection: AxisDirection.up,
                                    isModal: true,
                                    controller: ctr,
                                    child: Icon(
                                      Icons.priority_high_outlined,
                                      color: Color.fromARGB(255, 25, 83, 163),
                                      size: 40,
                                    ),
                                    margin: EdgeInsets.only(right: 2),
                                    content: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Container(
                                          alignment: Alignment.centerLeft,
                                          height: 170,
                                          width: 300,
                                          padding:
                                              EdgeInsets.fromLTRB(15, 5, 15, 5),
                                          decoration: BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 25, 83, 163),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Column(children: [
                                            AutoSizeText(
                                              'x pouce : y metre cube par heure ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              maxLines: 1,
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            AutoSizeText(
                                              '1\" 1/4 : 6  ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              maxLines: 1,
                                            ),
                                            AutoSizeText(
                                              '2\"        : 14 ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              maxLines: 1,
                                            ),
                                            AutoSizeText(
                                              '3\"        : 33 ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              maxLines: 1,
                                            ),
                                            Text(
                                              '4\"        : 58 ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            AutoSizeText(
                                              '5\"        : 90 ',
                                              style: TextStyle(
                                                  color: Colors.white),
                                              maxLines: 1,
                                            ),
                                            Text(
                                              '6\"        : 130',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ])),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      if (_tabTextIconIndexSelected == 0)
                        const SizedBox(
                          height: 8,
                        ),
                      if (_tabTextIconIndexSelected == 1)
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: TextField(
                              onChanged: (input) {},
                              controller: pass,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                labelText: 'Pc en W',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                                prefixIcon: ImageIcon(
                                  AssetImage("lib/images/home.png"),
                                  color: Colors.green,
                                ),
                                prefixIconConstraints:
                                    BoxConstraints(minWidth: 40),
                              ),
                            ),
                          ),
                        ),
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: TextField(
                            onChanged: (input) {},
                            controller: PC,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Pv en W',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              prefixIcon: ImageIcon(
                                AssetImage("lib/images/prise.png"),
                                color: Colors.orange,
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 40),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: TextField(
                            onChanged: (input) {},
                            controller: Voc,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Voc',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              prefixIcon: ImageIcon(
                                AssetImage("lib/images/VOC.png"),
                                color: Colors.blue,
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 40),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: TextField(
                            onChanged: (input) {},
                            controller: Icc,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelText: 'Icc',
                              labelStyle: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 14.0,
                              ),
                              prefixIcon: ImageIcon(
                                AssetImage(
                                    "lib/images/e2ebb0bd-358e-49ef-a95d-e1de216a88fa-removebg-preview.png"),
                                color: Colors.red,
                              ),
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 40),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      if (show_result1 == 0)
                        ElevatedButton(
                          onPressed: () {
                            if (pass.text.replaceAll(',', '.') != '') {
                              remplir1();

                              Navigator.push(
                                context,
                                MaterialPageRoute<dynamic>(
                                    builder: (_) => page1View(
                                          puissanceT: double.parse(puissance1),
                                          ConsEnergie: double.parse(
                                              pass.text.replaceAll(',', '.')),
                                          energieWh: double.parse(c_entre1),
                                          pick: double.parse(c_sortie1),
                                          onduleur: double.parse(c_max1),
                                          TBattrie: double.parse(nbr_),
                                          AHBattrie: double.parse(nbr_string),
                                          FournirW: (double.parse(Icc.text
                                                  .replaceAll(',', '.')) *
                                              double.parse(nbr_string)),
                                          exact: ((double.parse(nbr_) /
                                                  double.parse(nbr_string)) *
                                              double.parse(Voc.text
                                                  .replaceAll(',', '.'))),
                                          soulage: double.parse(c_sortie1),
                                          soulage2: pouce,
                                          stringnbr1: double.parse(pass.text),
                                          stringnbr2: double.parse(PC.text),
                                          paneauxnbr1: double.parse(c_sortie1),
                                          paneauxnbr2: name.text != ''
                                              ? double.parse(name.text)
                                              : 0,
                                          onn1: double.parse(c_sortie1),
                                          onn2: double.parse(c_sortie1),
                                          onn3: double.parse(c_sortie1),
                                          onn4: double.parse(c_sortie1),
                                          onn5: double.parse(c_sortie1),
                                          onn6: double.parse(c_sortie1),
                                        )),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 25, 83, 163),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            text1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      if (show_result1 == 1)
                        TextButton(
                          onPressed: () {
                            remplir1();

                            setState(() {
                              show_result1 = 0;
                              text1 = 'show results';
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 25, 83, 163),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Text(
                            text1,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      if (show_result1 == 1)
                        Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  AutoSizeText('puissance :'),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(puissance1),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('crt entree :'),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(c_entre1),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('crt sortie:  '),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(c_sortie1),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('crt Dmax :'),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(c_max1),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('plage de tension :'),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text('300 - 750 '),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('nbr panneaux :  '),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(nbr_),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('nbr String :'),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(nbr_string),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('Icc total : '),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text((double.parse(
                                              Icc.text.replaceAll(',', '.')) *
                                          double.parse(nbr_string))
                                      .toStringAsFixed(1)),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text('V par String  :  '),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(((double.parse(nbr_) /
                                              double.parse(nbr_string)) *
                                          double.parse(
                                              Voc.text.replaceAll(',', '.')))
                                      .toStringAsFixed(0)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ])),
                      /*    if (show_result1 == 1)
                Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ))*/
                    ],
                  ),
                ))
              ],
            )));
  }
}

class Trip {
  String equipement;
  String P_en_watt;
  String nombre;
  String P_total;
  String Demarage_P;
  String P_max;
  String dureel_travaille;
  String energie_w;
  Trip(this.Demarage_P, this.P_en_watt, this.P_max, this.P_total,
      this.dureel_travaille, this.energie_w, this.equipement, this.nombre);
}

class Tab2 {
  String P_en_watt;
  String crt_entree;
  String crt_sortie;
  String crt_DCmax;
  String price;
  Tab2(this.P_en_watt, this.crt_entree, this.crt_sortie, this.crt_DCmax,
      this.price);
}
