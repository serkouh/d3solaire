import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:localstorage/localstorage.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Page2View extends StatefulWidget {
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
  final double poucentage;
  const Page2View({
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
    required this.poucentage,
  }) : super(key: key);

  @override
  Page2ViewState createState() => Page2ViewState();
}

class Page2ViewState extends State<Page2View> {
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
          title: Text(widget.poucentage == 0 ? 'Hybride' : 'Off grid'),
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
                          'lib/images/pencilsketchadjusted-2131826-removebg-preview.png',
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                /*    GestureDetector(
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
                                      message: 'Puissance onduleur max ',
                                      child: AutoSizeText(
                                        'Pd = ${widget.pick.toStringAsFixed(0)} W',
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
                                      message: 'Puissance onduleur min',
                                      child: AutoSizeText(
                                        'p = ${widget.onduleur.toStringAsFixed(0)} W',
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),*/
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
                                      message: 'Puissance disponible en KW',
                                      child: AutoSizeText(
                                        'p = ${widget.onn1.toStringAsFixed(0)} KW',
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
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Nombre d\'onduleur',
                                      child: AutoSizeText(
                                        'N = ${widget.onn4 == 0 ? 1 : 2} U',
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
                                          _toolTipKey5.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey5,
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
                                      message: 'Tension onduleur',
                                      child: AutoSizeText(
                                        'Udc = ${widget.TBattrie.toStringAsFixed(0)} V',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
/*
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
                                      message: 'Capacite utile en Ah',
                                      child: AutoSizeText(
                                        '${widget.AHBattrie.toStringAsFixed(0)} Ah',
                                        maxLines: 1,
                                      ),
                                    )),*/

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
                                      message: 'Tension max',
                                      child: AutoSizeText(
                                        'Uv = ${widget.onn3.toStringAsFixed(0)} V',
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
                                      message: 'Intensite max',
                                      child: AutoSizeText(
                                        'Iv = ${widget.onn2.toStringAsFixed(0)} A',
                                        maxLines: 1,
                                      ),
                                    )),

                                /* const SizedBox(
                                  height: 20,
                                ),*/ /*   Text('nombre de panneaux exacte	     '),
                              const SizedBox(
                                height: 5,
                              ),*/
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
                          width: MediaQuery.of(context).size.width * 0.3,
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
                                      message: 'Puissance plaque',
                                      child: AutoSizeText(
                                        'Pv = ${widget.paneauxnbr2.toStringAsFixed(0)} W',
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
                                          _toolTipKey.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey,
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
                                      message: 'Nbr plaque adapte',
                                      child: AutoSizeText(
                                        'Npa = ${(widget.stringnbr2 * widget.paneauxnbr1).toStringAsFixed(0)} U',
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
                                          _toolTipKey6.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey6,
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
                                      message: 'Puissance crete optimal en Wc',
                                      child: AutoSizeText(
                                        'Pc = ${widget.FournirW.toStringAsFixed(0)} W',
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
                                        'Ns = ${widget.paneauxnbr1.toStringAsFixed(0)} U',
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
                                      message: 'Nbr plaque suffisant',
                                      child: AutoSizeText(
                                        'Nps = ${widget.soulage.toStringAsFixed(0)} U',
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),

                                /*  GestureDetector(
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
                                      message: 'Puissance onduleur',
                                      child: AutoSizeText(
                                        '${widget.onduleur.toStringAsFixed(0)}',
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
                                      message: 'Tension batterie',
                                      child: AutoSizeText(
                                        '${widget.TBattrie.toStringAsFixed(0)}',
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey13.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey13,
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
                                      message: 'Capacite utile en Ah',
                                      child: AutoSizeText(
                                        '${widget.AHBattrie.toStringAsFixed(0)}',
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
                                      message: 'Puissance crete optimal en Wc',
                                      child: AutoSizeText(
                                        '${widget.FournirW.toStringAsFixed(0)}',
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
                                      message: 'Nombre de panneaux soulage',
                                      child: AutoSizeText(
                                        '${widget.soulage.toStringAsFixed(0)}',
                                        maxLines: 1,
                                      ),
                                    )),
                                /* const SizedBox(
                                  height: 20,
                                ),*/ /*   Text('nombre de panneaux exacte	     '),
                              const SizedBox(
                                height: 5,
                              ),*/*/
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
                            'lib/images/pencilsketchadjusted-6981488-removebg-preview.png'),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.3,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      final dynamic _toolTip =
                                          _toolTipKey13.currentState;
                                      _toolTip.ensureTooltipVisible();
                                    },
                                    child: Tooltip(
                                      key: _toolTipKey13,
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
                                      message: 'Capacite utile en Ah',
                                      child: AutoSizeText(
                                        'Cu = ${widget.AHBattrie.toStringAsFixed(0)} Ah',
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
                                          color:
                                              Color.fromARGB(255, 25, 83, 163)),
                                      message: 'Tension batterie',
                                      child: AutoSizeText(
                                        'U = ${widget.TBattrie.toStringAsFixed(0)} V',
                                        style: TextStyle(color: Colors.green),
                                        maxLines: 1,
                                      ),
                                    )),
                                const SizedBox(
                                  height: 20,
                                ),
                                if (widget.puissanceT != 0)
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
                                            color: Color.fromARGB(
                                                255, 25, 83, 163)),
                                        message: 'Puissance de stock',
                                        child: AutoSizeText(
                                          'Ps = ${widget.puissanceT.toStringAsFixed(0)} Ah',
                                          maxLines: 1,
                                        ),
                                      )),
                                if (widget.puissanceT != 0)
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
                                      message: 'Consomation max en Wh',
                                      child: AutoSizeText(
                                        'PC = ${(widget.energieWh * 1).toStringAsFixed(0)} Wh',
                                        maxLines: 1,
                                      ),
                                    )),

                                /*    GestureDetector(
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
                                      message: 'Puissance onduleur max',
                                      child: AutoSizeText(
                                        '${widget.pick.toStringAsFixed(0)}',
                                        maxLines: 1,
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
                                      message: 'Puissance onduleur',
                                      child: AutoSizeText(
                                        '${widget.onduleur.toStringAsFixed(0)}',
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
                                      message: 'Tension batterie',
                                      child: AutoSizeText(
                                        '${widget.TBattrie.toStringAsFixed(0)}',
                                        maxLines: 1,
                                      ),
                                    )),*/

                                /*   GestureDetector(
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
                                      message: 'Puissance crete optimal en Wc',
                                      child: AutoSizeText(
                                        '${widget.FournirW.toStringAsFixed(0)}',
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
                                      message: 'Nombre de panneaux soulage',
                                      child: AutoSizeText(
                                        '${widget.soulage.toStringAsFixed(0)}',
                                        maxLines: 1,
                                      ),
                                    )),
                                /* const SizedBox(
                                  height: 20,
                                ),*/ /*   Text('nombre de panneaux exacte	     '),
                              const SizedBox(
                                height: 5,
                              ),*/*/
                              ])),
                    ],
                  )),
            ])));
  }
}
