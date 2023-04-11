import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;
import 'package:solaire/screens/cosum.dart';
import 'package:solaire/screens/page2View.dart';
import 'package:solaire/screens/page3View.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Page2State createState() => Page2State();
}

class Page2State extends State<Page2>
    with AutomaticKeepAliveClientMixin<Page2> {
  int _activeStepIndex = 0;
  int defaultChoiceIndex = 0;
  List<String> _choicesList = ['Hybrid', 'Off grid', 'On grid'];

  bool get wantKeepAlive => true;
  List<TextEditingController> Puissance = [
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
  ];
  TextEditingController name = TextEditingController();
  TextEditingController jour = TextEditingController(text: '1');
  TextEditingController email = TextEditingController();
  TextEditingController pui = TextEditingController();
  TextEditingController pass = TextEditingController();

  TextEditingController solar = TextEditingController();
  List<TextEditingController> Nombre = [
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
  ];
  List<String> inventory = ["Must", "SMA", "Afore"];
  List<TextEditingController> Duree = [
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
    new TextEditingController(),
  ];
  int _tabTextIconIndexSelected = 0;
  int _tabTextIconIndexSelected2 = 0;
  int _tabTextIconIndexSelected3 = 0;
  double initTime = 100;

  List<String> solax = [
    "3000",
    "4000",
    "5000",
    "8000",
    "10000",
    "15000",
    "20000",
    "30000",
    "40000",
    "50000",
    "60000",
  ];
  List<String> SMA = [
    "3000",
    "4000",
    "5000",
    "8000",
    "10000",
    "15000",
    "20000",
    "25000",
    "50000",
  ];
  List<String> huawei = [
    "3000",
    "4000",
    "5000",
    "8000",
    "10000",
    "12000",
    "15000",
    "20000",
    "30000",
    "40000",
    "50000",
    "60000",
    "100000",
  ];

  List<String> things = [
    "TV and radio",
    "chargers",
    "refrigerator",
    "lighting",
    "freezer",
    "air conditioner",
    "home appliances",
    "washing machine",
    "panini maker",
    "water heater",
    "electric oven",
    "other",
  ];
  String text1 = 'show result';
  GlobalKey _toolTipKey = GlobalKey();
  List<String> demarrage = [
    "1",
    "1",
    "4",
    "1",
    "4",
    "4",
    "4",
    "4",
    "1",
    "1",
    "1",
    "1",
  ];
  List<String> hint1 = [
    "100",
    "70	",
    "150	",
    "100	",
    "250	",
    "1200	",
    "500	",
    "600	",
    "1400	",
    "1200	",
    "2600	",
    "...	",
  ];
  List<String> hint2 = [
    "1	",
    "2	",
    "1	",
    "1	",
    "1	",
    "0	",
    "1	",
    "1	",
    "1	",
    "0	",
    "1	",
    "0  ",
  ];
  List<String> hint3 = [
    "3	",
    "2	",
    "10	",
    "5	",
    "10	",
    "3	",
    "1	",
    "0.5	",
    "0.1	",
    "2	",
    "0.5	",
    "0",
  ];
  makesure(List<TextEditingController> L) {
    for (TextEditingController m in L) {
      if (m.text.replaceAll(',', '.') == '') {
        return false;
      }
    }
    return true;
  }

  GlobalKey _toolTipKey2 = GlobalKey();
  GlobalKey _toolTipKey3 = GlobalKey();

  double puissanceT = 0;
  double ConsEnergie = 0;
  double energieWh = 0;
  double pick = 0;
  double onduleur = 0;
  double TBattrie = 0;
  double AHBattrie = 0;
  double FournirW = 0;
  double exact = 0;
  double soulage = 0;
  double soulage2 = 0;
  double stringnbr1 = 0;
  double stringnbr2 = 0;
  double paneauxnbr1 = 0;
  double paneauxnbr2 = 0;
  double Ponduleur = 0;
  String nbr_string = '';

  double onn1 = 0;
  double onn2 = 0;
  double onn3 = 0;
  double onn4 = 0;
  double onn5 = 0;
  double onn6 = 0;
  int show_result1 = 0;
  remplir2() {
    double temp2 = 0;
    double temp1 = 0;
    double temp3 = 0;
    print('aaaaaaaaaaaaaaaaaa');
    for (int i = 0; i < 12; i++) {
      if (Puissance[i].text != '' &&
          Nombre[i].text != '' &&
          Duree[i].text != '') {
        temp2 = temp2 +
            (double.parse(Puissance[i].text.replaceAll(',', '.')) *
                double.parse(Nombre[i].text.replaceAll(',', '.')) *
                double.parse(Duree[i].text.replaceAll(',', '.')));
        temp1 = temp1 +
            (double.parse(Puissance[i].text.replaceAll(',', '.')) *
                double.parse(Nombre[i].text.replaceAll(',', '.')));
        temp3 = temp3 +
            (double.parse(Puissance[i].text.replaceAll(',', '.')) *
                double.parse(Nombre[i].text.replaceAll(',', '.')) *
                double.parse(demarrage[i]));
        setState(() {
          ConsEnergie = temp2;
          puissanceT = temp1;
          pick = temp3;
        });
      } else {
        break;
      }
    }
  }

  remplir1() {
    double onduleur_temp = 0;
    double temp1 = 0;
    double temp2 = 0;
    double temp3 = 0;
    double on1 = 0;
    double on2 = 0;
    double on3 = 0;
    double on4 = 0;
    double on5 = 0;
    double on6 = 0;
    double temp4 = 0;
    for (int i = 0; i < 12; i++) {
      temp1 = temp1 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')));
      temp3 = temp3 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(demarrage[i]));
    }
    for (int i = 0; i < 12; i++) {
      temp2 = temp2 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(Duree[i].text.replaceAll(',', '.')));
    }

    setState(() {
      puissanceT = temp1;
      ConsEnergie = temp2;
      energieWh = ConsEnergie * 1.25;
      onduleur = puissanceT;
      pick = temp3;
      puissanceT > 2000 ? TBattrie = 48 : TBattrie = 24;
      AHBattrie = (energieWh * 1) /
          (0.8 * TBattrie) *
          1.3 *
          double.parse(jour.text.replaceAll(',', '.'));
      FournirW = energieWh / double.parse(solar.text.replaceAll(',', '.'));
      exact = FournirW / double.parse(name.text.replaceAll(',', '.'));
      soulage = double.parse(exact
              .toStringAsFixed(2)
              .substring(0, exact.toStringAsFixed(2).length - 3)) +
          1;

      if (onduleur * 0.82 < 2000) {
        onn1 = 2;
        onn2 = 32;
        onn3 = 80;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 2;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 2;
      } else if (onduleur * 0.82 < 3000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 3;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 5000) {
        onn1 = 5;
        onn2 = 80;
        onn3 = 145;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 3;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 6000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        onn4 = 3;
        onn5 = 60;
        onn6 = 145;
        stringnbr1 = 3;
        soulage > 12 ? stringnbr2 = 6 : stringnbr2 = 4;

        soulage > 12 ? paneauxnbr1 = soulage / 6 : paneauxnbr1 = soulage / 4;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 10000) {
        onn1 = 5;
        onn2 = 80;
        onn3 = 145;
        onn4 = 5;
        onn5 = 80;
        onn6 = 145;
        stringnbr1 = 3;
        soulage > 12 ? stringnbr2 = 6 : stringnbr2 = 4;

        soulage > 12 ? paneauxnbr1 = soulage / 6 : paneauxnbr1 = soulage / 4;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else {
        onn1 = 999;
        onn2 = 999;
        onn3 = 999;
        onn4 = 999;
        onn5 = 999;
        onn6 = 999;
        stringnbr1 = 999;
        stringnbr2 = 999;
        paneauxnbr1 = soulage / 6;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      }
    });
  }

  remplir3() {
    double onduleur_temp = 0;
    double temp1 = 0;
    double temp2 = 0;
    double temp3 = 0;
    double on1 = 0;
    double on2 = 0;
    double on3 = 0;
    double on4 = 0;
    double on5 = 0;
    double on6 = 0;
    double temp4 = 0;
    for (int i = 0; i < 12; i++) {
      temp1 = temp1 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')));
      temp3 = temp3 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(demarrage[i]));
    }
    for (int i = 0; i < 12; i++) {
      temp2 = temp2 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(Duree[i].text.replaceAll(',', '.')));
    }

    setState(() {
      puissanceT = temp1;
      ConsEnergie = temp2;
      energieWh = ConsEnergie * 1.25 * (initTime / 100);
      onduleur = puissanceT;
      pick = temp3;
      puissanceT > 2000 ? TBattrie = 48 : TBattrie = 24;
      AHBattrie = (energieWh * 1) /
          (0.8 * TBattrie) *
          1.3 *
          double.parse(jour.text.replaceAll(',', '.'));
      FournirW = energieWh / double.parse(solar.text.replaceAll(',', '.'));
      exact = FournirW / double.parse(name.text.replaceAll(',', '.'));
      soulage = double.parse(exact
              .toStringAsFixed(2)
              .substring(0, exact.toStringAsFixed(2).length - 3)) +
          1;

      if (_tabTextIconIndexSelected == 0) {
        for (String s in solax) {
          if (double.parse(s) > temp1 * 0.8) {
            temp4 = double.parse(s);
            break;
          }
        }
      } else if (_tabTextIconIndexSelected == 1) {
        for (String s in SMA) {
          if (double.parse(s) > temp1 * 0.8) {
            temp4 = double.parse(s);
            break;
          }
        }
      } else {
        for (String s in huawei) {
          if (double.parse(s) > temp1 * 0.8) {
            temp4 = double.parse(s);
            break;
          }
        }
      }
      onn1 = temp4;
    });
  }

  Offgrid() {
    double onduleur_temp = 0;
    double temp1 = 0;
    double temp2 = 0;
    double temp3 = 0;
    double on1 = 0;
    double on2 = 0;
    double on3 = 0;
    double on4 = 0;
    double on5 = 0;
    double on6 = 0;
    double temp4 = 0;
    for (int i = 0; i < 12; i++) {
      temp1 = temp1 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')));
      temp3 = temp3 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(demarrage[i]));
    }
    for (int i = 0; i < 12; i++) {
      temp2 = temp2 +
          (double.parse(Puissance[i].text.replaceAll(',', '.')) *
              double.parse(Nombre[i].text.replaceAll(',', '.')) *
              double.parse(Duree[i].text.replaceAll(',', '.')));
    }

    setState(() {
      puissanceT = temp1;
      ConsEnergie = temp2;
      energieWh = ConsEnergie * 1.25;
      onduleur = puissanceT;
      pick = temp3;
      puissanceT > 2000 ? TBattrie = 48 : TBattrie = 24;
      AHBattrie = (energieWh * 1) /
          (0.8 * TBattrie) *
          (double.parse(jour.text.replaceAll(',', '.')) -
              (((initTime) /
                  100)) /*+
              double.parse(jour.text.replaceAll(',', '.')) -
              1*/
          ) *
          1.3;
      FournirW = energieWh / double.parse(solar.text.replaceAll(',', '.'));
      exact = FournirW / double.parse(name.text.replaceAll(',', '.'));
      soulage = double.parse(exact
              .toStringAsFixed(2)
              .substring(0, exact.toStringAsFixed(2).length - 3)) +
          1;

      if (onduleur * 0.82 < 2000) {
        onn1 = 2;
        onn2 = 32;
        onn3 = 80;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 2;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 2;
      } else if (onduleur * 0.82 < 3000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 3;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 5000) {
        onn1 = 5;
        onn2 = 80;
        onn3 = 145;
        onn4 = 0;
        onn5 = 0;
        onn6 = 0;
        stringnbr1 = 3;
        soulage > 6 ? paneauxnbr1 = soulage / 3 : paneauxnbr1 = soulage / 2;
        soulage > 6 ? stringnbr2 = 3 : stringnbr2 = 2;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 6000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        onn4 = 3;
        onn5 = 60;
        onn6 = 145;
        stringnbr1 = 3;
        soulage > 12 ? stringnbr2 = 6 : stringnbr2 = 4;

        soulage > 12 ? paneauxnbr1 = soulage / 6 : paneauxnbr1 = soulage / 4;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else if (onduleur * 0.82 < 10000) {
        onn1 = 5;
        onn2 = 80;
        onn3 = 145;
        onn4 = 5;
        onn5 = 80;
        onn6 = 145;
        stringnbr1 = 3;
        soulage > 12 ? stringnbr2 = 6 : stringnbr2 = 4;

        soulage > 12 ? paneauxnbr1 = soulage / 6 : paneauxnbr1 = soulage / 4;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      } else {
        onn1 = 999;
        onn2 = 999;
        onn3 = 999;
        onn4 = 999;
        onn5 = 999;
        onn6 = 999;
        stringnbr1 = 999;
        stringnbr2 = 999;
        paneauxnbr1 = soulage / 6;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1
                        .toStringAsFixed(2)
                        .substring(
                            0, paneauxnbr1.toStringAsFixed(2).length - 3)) +
                    1
                : paneauxnbr1 = double.parse(paneauxnbr1
                    .toStringAsFixed(2)
                    .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3))
            : paneauxnbr1 = double.parse(paneauxnbr1
                .toStringAsFixed(2)
                .substring(0, paneauxnbr1.toStringAsFixed(2).length - 3));
        //  soulage = paneauxnbr1 * 3;
      }
    });
  }

  String show1(List<String> a, int b) {
    return a[b];
  }

  Widget _buildTableCell(
    String text, {
    bool isHeader = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AutoSizeText(
        text,
        maxLines: 1,
        style: TextStyle(
            fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
            color: isHeader ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _buildInputCell({
    required String hintText,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required Function onChanged,
  }) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        controller: controller,
        keyboardType: keyboardType,
        onChanged: (value) => onChanged(),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromRGBO(117, 160, 209, 1),
          ),
        ),
      ),
    );
  }

  Widget _buildDurationCell({
    required String hintText,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required Function onChanged,
  }) {
    return Container(
      height: 35,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(
          color: Colors.transparent,
          width: 1.0,
        ),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.bottom,
        controller: controller,
        keyboardType: keyboardType,
        onChanged: (value) => onChanged(),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(vertical: 8.0),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Color.fromRGBO(117, 160, 209, 1),
          ),
        ),
      ),
    );
  }

  final List<String> choicesList = [
    "Option 1",
    "Option 2",
    "Option 3",
  ];

  Widget buildChoiceChip(int index) {
    return ChoiceChip(
      labelPadding: EdgeInsets.all(2.0),
      label: Text(
        choicesList[index],
        style: Theme.of(context)
            .textTheme
            .bodyText2!
            .copyWith(color: Colors.white, fontSize: 12),
      ),
      selected: defaultChoiceIndex == index,
      selectedColor: Color.fromARGB(255, 25, 83, 163),
      onSelected: (value) {
        setState(() {
          defaultChoiceIndex = value ? index : defaultChoiceIndex;
          if (defaultChoiceIndex == 0) {
            inventory = ["Must", "SMA", "Afore"];
          } else if (defaultChoiceIndex == 1) {
            inventory = ["Must", "Hpower", "Huawei"];
          } else {
            inventory = ["Must", "Afore", "Solax"];
          }
        });
      },
      elevation: 1,
      padding: EdgeInsets.symmetric(horizontal: 10),
    );
  }

  Widget buildChoiceChips() {
    return Container(
      width: 280,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: choicesList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: buildChoiceChip(index),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return chuchu.Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
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
                              puissanceT = 0;
                              ConsEnergie = 0;
                              energieWh = 0;
                              pick = 0;
                              onduleur = 0;
                              TBattrie = 0;
                              AHBattrie = 0;
                              FournirW = 0;
                              exact = 0;
                              soulage = 0;

                              show_result1 = 0;
                              for (int i = 0; i < 12; i++) {
                                Puissance[i].text = '';
                                Duree[i].text = '';
                                Nombre[i].text = '';
                              }
                              name.text = '';
                              email.text = '';
                              pass.text = '';
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
                })
          },
          tooltip: 'delete',
          child: Icon(
            Icons.delete_sweep,
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.95,
                child: Table(
                  columnWidths: {
                    0: FlexColumnWidth(4),
                    1: FlexColumnWidth(3),
                    2: FlexColumnWidth(2),
                    3: FlexColumnWidth(2),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                    color: Color.fromRGBO(78, 129, 189, 1),
                    width: 1.0,
                  ),
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(78, 129, 189, 1),
                      ),
                      children: [
                        _buildTableCell(/*'Equipement'*/ 'Equipment',
                            isHeader: true),
                        _buildTableCell(/*'Puissance (W)'*/ 'Power (W)',
                            isHeader: true),
                        _buildTableCell(/*'Unite'*/ 'Units', isHeader: true),
                        _buildTableCell(/*'Duree (h)'*/ 'Duration (h)',
                            isHeader: true),
                      ],
                    ),
                    for (int i = 0; i < 12; i++)
                      TableRow(
                        decoration: BoxDecoration(
                          color: i % 2 == 0
                              ? Color.fromRGBO(184, 204, 228, 1)
                              : Color.fromRGBO(219, 229, 241, 1),
                        ),
                        children: [
                          _buildTableCell(things[i]),
                          _buildInputCell(
                            hintText: hint1[i],
                            controller: Puissance[i],
                            keyboardType: TextInputType.number,
                            onChanged: () {
                              if (Puissance[i].text == '0') {
                                Nombre[i].text = '0';
                                Duree[i].text = '0';
                              }
                              remplir2();
                            },
                          ),
                          _buildInputCell(
                            hintText: hint2[i],
                            controller: Nombre[i],
                            keyboardType: TextInputType.number,
                            onChanged: () => remplir2(),
                          ),
                          _buildDurationCell(
                            hintText: hint3[i],
                            controller: Duree[i],
                            keyboardType: TextInputType.number,
                            onChanged: () => remplir2(),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Tooltip(
                            key: _toolTipKey,
                            waitDuration: Duration(seconds: 0),
                            showDuration: Duration(seconds: 4),
                            padding: EdgeInsets.all(5),
                            height: 35,
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 25, 83, 163),
                            ),
                            message: 'Puissance',
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: GestureDetector(
                                onTap: () {
                                  final dynamic _toolTip =
                                      _toolTipKey.currentState;
                                  _toolTip.ensureTooltipVisible();
                                },
                                child: AutoSizeText(
                                  'P : ' + puissanceT.toStringAsFixed(0) + ' W',
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Tooltip(
                            key: _toolTipKey2,
                            waitDuration: Duration(seconds: 0),
                            showDuration: Duration(seconds: 4),
                            padding: EdgeInsets.all(5),
                            height: 35,
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 25, 83, 163),
                            ),
                            message: 'Puissance demarrage',
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: GestureDetector(
                                onTap: () {
                                  final dynamic _toolTip =
                                      _toolTipKey2.currentState;
                                  _toolTip.ensureTooltipVisible();
                                },
                                child: AutoSizeText(
                                  'Pd : ' + pick.toStringAsFixed(0) + ' W',
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Tooltip(
                            key: _toolTipKey3,
                            waitDuration: Duration(seconds: 0),
                            showDuration: Duration(seconds: 4),
                            padding: EdgeInsets.all(5),
                            height: 35,
                            textStyle: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 25, 83, 163),
                            ),
                            message: 'Puissance Demander',
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.28,
                              child: GestureDetector(
                                onTap: () {
                                  final dynamic _toolTip =
                                      _toolTipKey3.currentState;
                                  _toolTip.ensureTooltipVisible();
                                },
                                child: AutoSizeText(
                                  'PC : ${(ConsEnergie).toStringAsFixed(0)} Wh',
                                  maxLines: 1,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ))),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  spacing: 8,
                  children: List.generate(_choicesList.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: ChoiceChip(
                        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                        label: Text(
                          _choicesList[index],
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                        ),
                        selected: defaultChoiceIndex == index,
                        selectedColor: Color.fromARGB(255, 25, 83, 163),
                        onSelected: (value) {
                          setState(() {
                            defaultChoiceIndex =
                                value ? index : defaultChoiceIndex;
                            if (defaultChoiceIndex == 0) {
                              inventory = ["Must", "SMA", "Afore"];
                            } else if (defaultChoiceIndex == 1) {
                              inventory = ["Must", "Hpower", "Huawei"];
                            } else {
                              inventory = ["Must", "Afore", "Solax"];
                            }
                          });
                        },
                        elevation: 1,
                      ),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 1,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              /*  Center(
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.66 + 5,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          /*   Center(
                              child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  child: TextField(
                                    onChanged: (input) {},
                                    controller: email,
                                    keyboardType: TextInputType.number,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Vmpp',
                                    ),
                                  ))),*/
                        ],
                      ))),*/
              const SizedBox(
                height: 5,
              ),
              if (defaultChoiceIndex == 1)
                Center(
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Container(
                        constraints: BoxConstraints(
                          minWidth: 0,
                          maxHeight: 40,
                          maxWidth:
                              MediaQuery.of(context).size.width * 0.66 + 5,
                        ),
                        width: MediaQuery.of(context).size.width * 0.66 + 5,
                        child: Center(
                          child: CustomToggleTab(
                            tabs: ["Must", "Hpower", "Huawei"],
                            isSelectedList: [
                              _tabTextIconIndexSelected == 0,
                              _tabTextIconIndexSelected == 1,
                              _tabTextIconIndexSelected == 2,
                              _tabTextIconIndexSelected == 3,
                            ],
                            onTabChanged: (index) {
                              setState(() {
                                _tabTextIconIndexSelected = index;
                              });
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.66 + 5,
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: TextField(
                                    onChanged: (input) {},
                                    controller: jour,
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
                                      labelText: 'Autonomy day',
                                      labelStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                      prefixIcon: ImageIcon(
                                          AssetImage("lib/images/sun.png"),
                                          color:
                                              Color.fromARGB(255, 78, 77, 77),
                                          size: 30),
                                      prefixIconConstraints:
                                          BoxConstraints(minWidth: 40),
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: TextField(
                                    onChanged: (input) {},
                                    controller: name,
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
                                      labelText: 'Pv in W',
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
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      if (defaultChoiceIndex == 1)
                        Center(
                            child: Container(
                          width: MediaQuery.of(context).size.width * 0.33 + 5,
                          //  height: 40,

                          child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: TextField(
                                onChanged: (input) {},
                                controller: solar,
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
                                  labelText: 'Sunshine',
                                  labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.0,
                                  ),
                                  prefixIcon: Icon(Icons.sunny,
                                      color: Colors.yellow[700]),
                                  prefixIconConstraints:
                                      BoxConstraints(minWidth: 40),
                                ),
                              )),
                        )),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              if (defaultChoiceIndex == 0)
                Column(children: [
                  Center(
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: 0,
                        maxHeight: 40,
                        maxWidth: MediaQuery.of(context).size.width * 0.66 + 5,
                      ),
                      width: MediaQuery.of(context).size.width * 0.66 + 5,
                      child: Center(
                        child: CustomToggleTab(
                          tabs: ["Must", "SMA", "afore"],
                          isSelectedList: [
                            _tabTextIconIndexSelected == 0,
                            _tabTextIconIndexSelected == 1,
                            _tabTextIconIndexSelected == 2,
                            _tabTextIconIndexSelected == 3,
                          ],
                          onTabChanged: (index) {
                            setState(() {
                              _tabTextIconIndexSelected = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.66 + 5,
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: TextField(
                                  onChanged: (input) {},
                                  controller: name,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    labelText: 'Pv in W',
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
                                )),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: TextField(
                                  onChanged: (input) {},
                                  controller: solar,
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.blue),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    labelText: 'Sunshine',
                                    labelStyle: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                    prefixIcon: Icon(Icons.sunny,
                                        color: Colors.yellow[700]),
                                    prefixIconConstraints:
                                        BoxConstraints(minWidth: 40),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                      child: Container(
                          constraints: BoxConstraints(
                            minWidth: 0,
                            maxHeight: 150,
                            maxWidth:
                                MediaQuery.of(context).size.width * 0.66 + 5,
                          ),
                          width: MediaQuery.of(context).size.width * 0.66 + 5,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 0.33 +
                                        5,
                                //   height: 40,

                                child: Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Center(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                    0.33 +
                                                5,
                                        //    height: 40,
                                        child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: TextField(
                                              onChanged: (input) {},
                                              controller: jour,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.blue),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                labelText: 'Autonomy day',
                                                labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                ),
                                                prefixIcon: ImageIcon(
                                                    AssetImage(
                                                        "lib/images/sun.png"),
                                                    color: Color.fromARGB(
                                                        255, 78, 77, 77),
                                                    size: 30),
                                                prefixIconConstraints:
                                                    BoxConstraints(
                                                        minWidth: 40),
                                              ),
                                            )),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                  ],
                                ),
                              ),
                              Container(
                                  constraints: BoxConstraints(
                                    minWidth: 0,
                                    maxHeight: 150,
                                    maxWidth:
                                        MediaQuery.of(context).size.width *
                                            0.33,
                                  ),
                                  child: SfRadialGauge(
                                      title: GaugeTitle(
                                        text: 'Ratio Cons day/night',
                                        textStyle: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 25, 83, 163),
                                        ),
                                        alignment: GaugeAlignment.center,
                                      ),
                                      axes: <RadialAxis>[
                                        RadialAxis(
                                            canScaleToFit: true,
                                            minimum: 0,
                                            maximum: 100,
                                            startAngle: 270,
                                            endAngle: 270,
                                            showLabels: false,
                                            showTicks: false,
                                            radiusFactor: 0.6,
                                            axisLineStyle: AxisLineStyle(
                                                cornerStyle:
                                                    CornerStyle.bothFlat,
                                                color: Colors.black12,
                                                thickness: 12),
                                            pointers: <GaugePointer>[
                                              RangePointer(
                                                value: initTime,
                                                cornerStyle:
                                                    CornerStyle.bothFlat,
                                                width: 12,
                                                sizeUnit:
                                                    GaugeSizeUnit.logicalPixel,
                                                color: Color.fromARGB(
                                                    255, 25, 83, 163),
                                              ),
                                              MarkerPointer(
                                                  value: initTime,
                                                  enableDragging: true,
                                                  onValueChanged: ((value) =>
                                                      setState(() {
                                                        initTime = value;
                                                      })),
                                                  markerHeight: 20,
                                                  markerWidth: 20,
                                                  markerType: MarkerType.circle,
                                                  color: Color.fromARGB(
                                                      255, 25, 83, 163),
                                                  borderWidth: 2,
                                                  borderColor: Colors.white54),
                                            ],
                                            annotations: <GaugeAnnotation>[
                                              GaugeAnnotation(
                                                  angle: 90,
                                                  axisValue: 5,
                                                  positionFactor: 0.2,
                                                  widget: Text(
                                                      initTime.toStringAsFixed(
                                                              0) +
                                                          '%',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Color.fromARGB(
                                                            255, 25, 83, 163),
                                                      )))
                                            ])
                                      ])),
                            ],
                          )))
                ]),
              if (defaultChoiceIndex == 2)
                Center(
                    child: Container(
                        constraints: BoxConstraints(
                            minWidth: 0,
                            maxHeight: 40,
                            maxWidth:
                                MediaQuery.of(context).size.width * 0.66 + 5),
                        width: MediaQuery.of(context).size.width * 0.66 + 5,
                        child: Center(
                            child: CustomToggleTab(
                          tabs: ["Must", "afore", "Solax"],
                          isSelectedList: [
                            _tabTextIconIndexSelected == 0,
                            _tabTextIconIndexSelected == 1,
                            _tabTextIconIndexSelected == 2,
                            _tabTextIconIndexSelected == 3
                          ],
                          onTabChanged: (index) {
                            setState(() {
                              _tabTextIconIndexSelected = index;
                            });
                          },
                        )))),
              if (defaultChoiceIndex == 2)
                const SizedBox(
                  height: 20,
                ),
              if (defaultChoiceIndex == 2)
                Center(
                    child: Container(
                        constraints: BoxConstraints(
                            minWidth: 0,
                            maxHeight: 150,
                            maxWidth:
                                MediaQuery.of(context).size.width * 0.66 + 5),
                        width: MediaQuery.of(context).size.width * 0.66 + 5,
                        child: Row(children: [
                          Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.44 + 5,
                              child: Column(
                                children: [
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                              0.5 +
                                          0,
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: TextField(
                                            onChanged: (input) {},
                                            controller: name,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              labelText: 'Pv in W',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                              ),
                                              prefixIcon: ImageIcon(
                                                AssetImage(
                                                    "lib/images/prise.png"),
                                                color: Colors.orange,
                                              ),
                                              prefixIconConstraints:
                                                  BoxConstraints(minWidth: 40),
                                            ),
                                          )),
                                    ),
                                  ),

                                  /*     Center(
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.22,
                                                      child: TextField(
                                                        onChanged: (input) {},
                                                        controller: email,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText: 'Vmpp',
                                                        ),
                                                      ))),*/

                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: Padding(
                                          padding:
                                              const EdgeInsets.only(right: 5),
                                          child: TextField(
                                            onChanged: (input) {},
                                            controller: solar,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.blue),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              labelText: 'Sunshine',
                                              labelStyle: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                              ),
                                              prefixIcon: Icon(Icons.sunny,
                                                  color: Colors.yellow[700]),
                                              prefixIconConstraints:
                                                  BoxConstraints(minWidth: 40),
                                            ),
                                          )),
                                    ),
                                  )
                                  /*     Center(
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.22,
                                                      child: TextField(
                                                        onChanged: (input) {},
                                                        controller: pass,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText: 'Icc',
                                                        ),
                                                      ))),*/
                                ],
                              )),
                          Container(
                              constraints: BoxConstraints(
                                  minWidth: 0,
                                  maxHeight: 150,
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.22),
                              child: SfRadialGauge(
                                  title: GaugeTitle(
                                    text: 'Ratio Cons  day/night',
                                    textStyle: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 25, 83, 163),
                                    ),
                                    alignment: GaugeAlignment.near,
                                  ),
                                  axes: <RadialAxis>[
                                    RadialAxis(
                                        canScaleToFit: true,
                                        minimum: 0,
                                        maximum: 100,
                                        startAngle: 270,
                                        endAngle: 270,
                                        showLabels: false,
                                        showTicks: false,
                                        radiusFactor: 0.6,
                                        axisLineStyle: AxisLineStyle(
                                            cornerStyle: CornerStyle.bothFlat,
                                            color: Colors.black12,
                                            thickness: 12),
                                        pointers: <GaugePointer>[
                                          RangePointer(
                                            value: initTime,
                                            cornerStyle: CornerStyle.bothFlat,
                                            width: 12,
                                            sizeUnit:
                                                GaugeSizeUnit.logicalPixel,
                                            color: Color.fromARGB(
                                                255, 25, 83, 163),
                                          ),
                                          MarkerPointer(
                                              value: initTime,
                                              enableDragging: true,
                                              onValueChanged: ((value) =>
                                                  setState(() {
                                                    initTime = value;
                                                  })),
                                              markerHeight: 20,
                                              markerWidth: 20,
                                              markerType: MarkerType.circle,
                                              color: Color.fromARGB(
                                                  255, 25, 83, 163),
                                              borderWidth: 2,
                                              borderColor: Colors.white54),
                                        ],
                                        annotations: <GaugeAnnotation>[
                                          GaugeAnnotation(
                                              angle: 90,
                                              axisValue: 5,
                                              positionFactor: 0.2,
                                              widget: Text(
                                                  initTime.toStringAsFixed(0) +
                                                      '%',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 25, 83, 163),
                                                  )))
                                        ])
                                  ])),
                        ]))),
              if (show_result1 == 0)
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    if (defaultChoiceIndex == 1) {
                      if (makesure(Puissance) &&
                          makesure(Nombre) &&
                          makesure(Duree) &&
                          name.text.replaceAll(',', '.') != '') {
                        remplir1();
                        Navigator.push(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (_) => Page2View(
                                  puissanceT: 0,
                                  ConsEnergie: ConsEnergie,
                                  energieWh: energieWh,
                                  pick: pick,
                                  poucentage: 1,
                                  onduleur: onduleur,
                                  TBattrie: TBattrie,
                                  AHBattrie: AHBattrie,
                                  FournirW: FournirW,
                                  exact: exact,
                                  soulage: soulage,
                                  soulage2: soulage2,
                                  stringnbr1: stringnbr1,
                                  stringnbr2: stringnbr2,
                                  paneauxnbr1: paneauxnbr1,
                                  paneauxnbr2: name.text != ''
                                      ? double.parse(name.text)
                                      : 0,
                                  onn1: onn1,
                                  onn2: onn2,
                                  onn3: onn3,
                                  onn4: onn4,
                                  onn5: onn5,
                                  onn6: onn6)),
                        );

                        /*   setState(() {
                        show_result1 = 1;
                        text1 = 'hide results';
                      });*/
                      } else {
                        Fluttertoast.showToast(
                          msg: "Vous avez oublier un champs",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    } else if (defaultChoiceIndex == 0) {
                      if (makesure(Puissance) &&
                              makesure(Nombre) &&
                              makesure(Duree) &&
                              name.text.replaceAll(',', '.') !=
                                  '' /* &&
                              email.text.replaceAll(',', '.') !=
                                  ''  &&
                        pass.text.replaceAll(',', '.') != ''*/
                          ) {
                        Offgrid();
                        //  onGrid();
                        Navigator.push(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (_) => Page2View(
                                    puissanceT:
                                        energieWh * ((100 - initTime) / 100),
                                    ConsEnergie: ConsEnergie,
                                    energieWh: energieWh,
                                    pick: pick,
                                    onduleur: onduleur,
                                    TBattrie: TBattrie,
                                    AHBattrie: AHBattrie,
                                    FournirW: FournirW,
                                    exact: exact,
                                    soulage: soulage,
                                    soulage2: soulage2,
                                    stringnbr1: stringnbr1,
                                    stringnbr2: stringnbr2,
                                    paneauxnbr1: paneauxnbr1,
                                    paneauxnbr2: name.text != ''
                                        ? double.parse(name.text)
                                        : 0,
                                    onn1: onn1,
                                    onn2: onn2,
                                    onn3: onn3,
                                    onn4: onn4,
                                    onn5: onn5,
                                    poucentage: 0,
                                    onn6: onn6,
                                  )),
                        );
                        /* setState(() {
                        show_result1 = 1;
                        text1 = 'hide results';
                      });*/
                      } else {
                        Fluttertoast.showToast(
                          msg: "Vous avez oublier un champs",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
                    } else {
                      if (makesure(Puissance) &&
                              makesure(Nombre) &&
                              makesure(Duree) &&
                              name.text.replaceAll(',', '.') !=
                                  '' /* &&
                              email.text.replaceAll(',', '.') !=
                                  ''  &&
                        pass.text.replaceAll(',', '.') != ''*/
                          ) {
                        remplir3();
                        print('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
                        Navigator.push(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (_) => Page3View(
                                  puissanceT: energieWh,
                                  ConsEnergie: ConsEnergie,
                                  energieWh: energieWh,
                                  pick: pick,
                                  onduleur: onduleur,
                                  TBattrie: TBattrie,
                                  AHBattrie: AHBattrie,
                                  FournirW: FournirW,
                                  exact: exact,
                                  soulage: soulage,
                                  soulage2: soulage2,
                                  stringnbr1: stringnbr1,
                                  stringnbr2: stringnbr2,
                                  paneauxnbr1: paneauxnbr1,
                                  paneauxnbr2: name.text != ''
                                      ? double.parse(
                                          name.text.replaceAll(',', '.'))
                                      : 0,
                                  onn1: onn1,
                                  onn2: onn2,
                                  onn3: onn3,
                                  onn4: onn4,
                                  onn5: onn5,
                                  onn6: onn6)),
                        ); /*
                                        setState(() {
                                          show_result1 = 1;
                                          text1 =
                                              'hide results';
                                        });*/
                      } else {
                        Fluttertoast.showToast(
                          msg: "Vous avez oublier un champs",
                          toastLength: Toast.LENGTH_SHORT,
                          timeInSecForIosWeb: 1,
                          backgroundColor: Colors.black,
                          textColor: Colors.white,
                          fontSize: 16.0,
                        );
                      }
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
                )),
              /*   GestureDetector(
                  onTap: () {
                    final dynamic _toolTip = _toolTipKey.currentState;
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
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 25, 83, 163)),
                    message: 'Consomation max en Wh',
                    child: AutoSizeText(
                      '	saaaaaaaaaaaaaaaaaaaaaaaa',
                      maxLines: 1,
                    ),
                  )),*/
              if (show_result1 == 1)
                Center(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      show_result1 = 0;
                      text1 = 'show result';
                    });
                  },
                  child: Text(text1),
                )),
              if (show_result1 == 1)
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              AutoSizeText(
                                'Consomation max en Wh	       ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Puissance onduleur Pick           ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Puissance onduleur	               ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Tension batterie            ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Capacite utile en Ah	 ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'puissance crete optimal en Wc	      ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'nombre de panneaux soulage	    ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ), /*   Text('nombre de panneaux exacte	     '),
                              const SizedBox(
                                height: 5,
                              ),*/
                            ])),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 30,
                              ),
                              Text(': ${energieWh.toStringAsFixed(2)} '),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${pick.toStringAsFixed(2)}  '),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${onduleur.toStringAsFixed(2)}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${TBattrie.toStringAsFixed(2)} '),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${AHBattrie.toStringAsFixed(2)}  '),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${FournirW.toStringAsFixed(2)}'),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(': ${soulage.toStringAsFixed(0)}'),
                              const SizedBox(
                                height: 5,
                              ), /*Text(': ${exact.toStringAsFixed(2)} '),
                              const SizedBox(
                                height: 5,
                              ),*/
                            ])),
                  ],
                )
            ])));
  }
}
