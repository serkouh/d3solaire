import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:localstorage/localstorage.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class page1View extends StatefulWidget {
  final double puissanceT;
  final double ConsEnergie;
  final double energieWh;
  final double pick;
  final double onduleur;
  final double TBattrie;
  final double AHBattrie;
  final double FournirW;
  final double exact;
  final double soulage;
  final double soulage2;
  final double stringnbr1;
  final double stringnbr2;
  final double paneauxnbr1;
  final double paneauxnbr2;
  final double onn1;
  final double onn2;
  final double onn3;
  final double onn4;
  final double onn5;
  final double onn6;
  const page1View({
    Key? key,
    required this.puissanceT,
    required this.ConsEnergie,
    required this.energieWh,
    required this.pick,
    required this.onduleur,
    required this.TBattrie,
    required this.AHBattrie,
    required this.FournirW,
    required this.exact,
    required this.soulage,
    required this.soulage2,
    required this.stringnbr1,
    required this.stringnbr2,
    required this.paneauxnbr1,
    required this.paneauxnbr2,
    required this.onn1,
    required this.onn2,
    required this.onn3,
    required this.onn4,
    required this.onn5,
    required this.onn6,
  }) : super(key: key);

  @override
  page1ViewState createState() => page1ViewState();
}

class page1ViewState extends State<page1View> {
  GlobalKey _toolTipKey = GlobalKey();
  GlobalKey _toolTipKey2 = GlobalKey();
  GlobalKey _toolTipKey3 = GlobalKey();
  GlobalKey _toolTipKey4 = GlobalKey();
  GlobalKey _toolTipKey5 = GlobalKey();
  GlobalKey _toolTipKey6 = GlobalKey();
  GlobalKey _toolTipKey7 = GlobalKey();
  GlobalKey _toolTipKey8 = GlobalKey();
  GlobalKey _toolTipKey9 = GlobalKey();
  GlobalKey _toolTipKey10 = GlobalKey();
  GlobalKey _toolTipKey11 = GlobalKey();
  GlobalKey _toolTipKey13 = GlobalKey();
  GlobalKey _toolTipKey14 = GlobalKey();
  GlobalKey _toolTipKey15 = GlobalKey();
  GlobalKey _toolTipKey16 = GlobalKey();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pompage'),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          'lib/images/pencilsketchadjusted-3103699-removebg-preview.png',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey2.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey2,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Puissance pompage ',
                                      child: AutoSizeText(
                                        'Pc = ${widget.puissanceT.toStringAsFixed(0)} W',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey11.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey11,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 10,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'plage de tension',
                                      child: AutoSizeText(
                                        '300 V > Vdc >750 V ',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey3.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey3,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 10,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Courant entree',
                                      child: AutoSizeText(
                                        'I-in = ${widget.energieWh.toStringAsFixed(0)} A',
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: widget.energieWh <
                                                    widget.FournirW
                                                ? Colors.red
                                                : Colors.black),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey10.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey10,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'courant sortie',
                                      child: AutoSizeText(
                                        'I-out = ${widget.pick.toStringAsFixed(0)} A',
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                              ])),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 1,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                            'lib/images/pencilsketchadjusted-2123405-removebg-preview.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey16.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey16,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Nombre panneaux',
                                      child: AutoSizeText(
                                        'N = ${widget.TBattrie.toStringAsFixed(0)} U',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey9.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey9,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Puissance plaque',
                                      child: AutoSizeText(
                                        'Pv = ${widget.stringnbr2.toStringAsFixed(0)} W',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey14.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey14,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Nbr String',
                                      child: AutoSizeText(
                                        'Ns = ${widget.AHBattrie.toStringAsFixed(0)} U',
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey15.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey15,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Courant DC',
                                      child: AutoSizeText(
                                        'Icc = ${widget.FournirW.toStringAsFixed(0)} A',
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: widget.energieWh <
                                                    widget.FournirW
                                                ? Colors.red
                                                : Colors.black),
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey8.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey8,
                                      waitDuration: Duration(seconds: 0),
                                      showDuration: Duration(seconds: 4),
                                      padding: EdgeInsets.all(5),
                                      height: 35,
                                      textStyle: TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Tension string',
                                      child: AutoSizeText(
                                        'Vdc = ${widget.exact.toStringAsFixed(0)} V',
                                        maxLines: 1,
                                      ),
                                    )),
                              ])),
                    ],
                  )),
              SizedBox(
                height: 15,
              ),
              if (widget.soulage2 != 0)
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 1,
                    color: Colors.black,
                  ),
                ),
              SizedBox(
                height: 15,
              ),
              if (widget.soulage2 != 0)
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Image.asset(
                            'lib/images/pencilsketchadjusted-2329276-removebg-preview.png',
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        final dynamic _toolTip =
                                            _toolTipKey5.currentState;
                                        _toolTip.ensureTooltipVisible();
                                      },
                                      child: Tooltip(
                                        key: _toolTipKey5,
                                        waitDuration: Duration(seconds: 0),
                                        showDuration: Duration(seconds: 4),
                                        padding: EdgeInsets.all(5),
                                        height: 10,
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 25, 83, 163)),
                                        message: 'Puissance pompe',
                                        child: AutoSizeText(
                                          'P = ${(double.parse(((widget.stringnbr1 * 1.36) / 1000).toStringAsFixed(0))).toStringAsFixed(0)} Ch',
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: widget.energieWh <
                                                      widget.FournirW
                                                  ? Colors.red
                                                  : Colors.green),
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        final dynamic _toolTip =
                                            _toolTipKey4.currentState;
                                        _toolTip.ensureTooltipVisible();
                                      },
                                      child: Tooltip(
                                        key: _toolTipKey4,
                                        waitDuration: Duration(seconds: 0),
                                        showDuration: Duration(seconds: 4),
                                        padding: EdgeInsets.all(5),
                                        height: 35,
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 25, 83, 163)),
                                        message: 'Voltage pompe',
                                        child: AutoSizeText(
                                          'U = 380 V',
                                          style: TextStyle(color: Colors.green),
                                          maxLines: 1,
                                        ),
                                      )),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        final dynamic _toolTip =
                                            _toolTipKey7.currentState;
                                        _toolTip.ensureTooltipVisible();
                                      },
                                      child: Tooltip(
                                        key: _toolTipKey7,
                                        waitDuration: Duration(seconds: 0),
                                        showDuration: Duration(seconds: 4),
                                        padding: EdgeInsets.all(5),
                                        height: 35,
                                        textStyle: TextStyle(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 25, 83, 163)),
                                        message: 'Refoulement en pouce',
                                        child: AutoSizeText(
                                          'D = ${widget.soulage2.toStringAsFixed(0)} \"',
                                          maxLines: 1,
                                        ),
                                      )),
                                ])),
                      ],
                    )),
            ])));
  }
}
