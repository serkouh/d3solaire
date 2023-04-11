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
import 'package:toggle_switch/toggle_switch.dart';

class page2_fast extends StatefulWidget {
  const page2_fast({Key? key}) : super(key: key);

  @override
  page2_fastState createState() => page2_fastState();
}

class page2_fastState extends State<page2_fast>
    with AutomaticKeepAliveClientMixin<page2_fast> {
  int _activeStepIndex = 0;
  double initTime = 50;

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
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController pui = TextEditingController();
  TextEditingController puiss = TextEditingController();
  TextEditingController solar = TextEditingController();
  int defaultChoiceIndex = 0;
  List<String> _choicesList = ['Hybride', 'Off grid', 'On grid'];
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
  int _tabTextIconIndexSelected = 0;
  TextEditingController jour = TextEditingController(text: '1');

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
  List<String> things = [
    "tele et radio",
    "chargeurs",
    "refregirateur",
    "eclairage",
    "congelateur",
    "climatiseur",
    "electromenagers",
    "machine a laver",
    "paninni",
    "chauffe eau",
    "four electrique",
    "Autre",
  ];
  String text1 = 'show result ';

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
    "0",
  ];
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

  String nbr_string = '';

  double Ponduleur = 0;
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
  double stringnbr1 = 0;
  double stringnbr2 = 0;
  double paneauxnbr1 = 0;
  double paneauxnbr2 = 0;
  double onn1 = 0;
  double onn2 = 0;
  double onn3 = 0;
  double onn4 = 0;
  double onn5 = 0;
  double onn6 = 0;
  int show_result1 = 0;
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
    /*for (int i = 0; i < 12; i++) {
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
    }*/

    setState(() {
      puissanceT = double.parse(puiss.text.replaceAll(',', '.'));
      ConsEnergie = double.parse(pui.text.replaceAll(',', '.'));
      energieWh = ConsEnergie * 1.25;
      onduleur = puissanceT;
      pick = 0;
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

  remplir2() {
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
    /* for (int i = 0; i < 12; i++) {
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
    }*/

    setState(() {
      puissanceT = double.parse(puiss.text.replaceAll(',', '.'));
      ConsEnergie = double.parse(pui.text.replaceAll(',', '.'));
      energieWh = ConsEnergie * 1.25 * (initTime / 100);
      onduleur = puissanceT;
      pick = 0;
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
    /* for (int i = 0; i < 12; i++) {
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
*/
    setState(() {
      puissanceT = double.parse(puiss.text.replaceAll(',', '.'));
      ConsEnergie = double.parse(pui.text.replaceAll(',', '.'));

      energieWh = ConsEnergie * 1.25;
      onduleur = puissanceT;
      pick = 0;
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
              Center(
                child: Wrap(
                  spacing: 8,
                  children: List.generate(_choicesList.length, (index) {
                    return ChoiceChip(
                      labelPadding: EdgeInsets.all(2.0),
                      label: Text(
                        _choicesList[index],
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: Colors.white, fontSize: 12),
                      ),
                      selected: defaultChoiceIndex == index,
                      selectedColor: Color.fromARGB(255, 25, 83, 163),
                      onSelected: (value) {
                        setState(() {
                          defaultChoiceIndex =
                              value ? index : defaultChoiceIndex;
                        });
                      },
                      // backgroundColor: color,
                      elevation: 1,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                    );
                  }),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              if (defaultChoiceIndex != 1)
                Center(
                  child: ToggleSwitch(
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
                      [
                        Color.fromARGB(255, 25, 83, 163),
                      ],
                    ],
                    labels: ["Must", "afore", "Solax"],
                    onToggle: (index) {
                      setState(() {
                        _tabTextIconIndexSelected = index!;
                      });
                    },
                  ),
                ),
              /*  Center(
                child: Container(
                  constraints: BoxConstraints(
                    minWidth: 0,
                    maxHeight: 40,
                    maxWidth: MediaQuery.of(context).size.width * 0.66 + 5,
                  ),
                  width: MediaQuery.of(context).size.width * 0.66 + 5,
                  child: Center(
                    child: CustomToggleTab(
                      tabs: ['Option 1', 'Option 2', 'Option 3'],
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
              ),*/
              if (defaultChoiceIndex != 1)
                const SizedBox(
                  height: 20,
                ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: TextField(
                    onChanged: (input) {},
                    controller: pui,
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
                      labelText: 'P appele W',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      prefixIcon: Icon(
                        Icons.power,
                        color: Colors.red,
                      ),
                      prefixIconConstraints: BoxConstraints(minWidth: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: TextField(
                    onChanged: (input) {},
                    controller: puiss,
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
                      labelText: 'Pc en Wh',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      prefixIcon: ImageIcon(
                        AssetImage("lib/images/home.png"),
                        color: Colors.green,
                      ),
                      prefixIconConstraints: BoxConstraints(minWidth: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: TextField(
                    onChanged: (input) {},
                    controller: name,
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
                      prefixIconConstraints: BoxConstraints(minWidth: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              /*   if (defaultChoiceIndex != 1)
                Center(
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.33,
                        child: TextField(
                          onChanged: (input) {},
                          controller: email,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Vmpp',
                          ),
                        ))),*/
              if (defaultChoiceIndex != 1)
                const SizedBox(
                  height: 15,
                ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.33,
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
                      labelText: 'Ensoleiment',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      prefixIcon: Icon(Icons.sunny, color: Colors.yellow[700]),
                      prefixIconConstraints: BoxConstraints(minWidth: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.33,
                  child: TextField(
                    onChanged: (input) {},
                    controller: jour,
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
                      labelText: 'Jour autonomie',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      prefixIcon: ImageIcon(AssetImage("lib/images/sun.png"),
                          color: Color.fromARGB(255, 78, 77, 77), size: 30),
                      prefixIconConstraints: BoxConstraints(minWidth: 40),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              if (defaultChoiceIndex != 1)
                Center(
                    child: Container(
                        constraints: BoxConstraints(
                            minWidth: 0,
                            maxHeight: 150,
                            maxWidth: MediaQuery.of(context).size.width * 0.22),
                        child: SfRadialGauge(
                            title: GaugeTitle(
                              text: 'Ratio Cons  jour/nuit',
                              textStyle: TextStyle(
                                fontSize: 12,
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
                                      sizeUnit: GaugeSizeUnit.logicalPixel,
                                      color: Color.fromARGB(255, 25, 83, 163),
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
                                        color: Color.fromARGB(255, 25, 83, 163),
                                        borderWidth: 2,
                                        borderColor: Colors.white54),
                                  ],
                                  annotations: <GaugeAnnotation>[
                                    GaugeAnnotation(
                                        angle: 90,
                                        axisValue: 5,
                                        positionFactor: 0.2,
                                        widget: Text(
                                            initTime.toStringAsFixed(0) + '%',
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 25, 83, 163),
                                            )))
                                  ])
                            ]))),
              const SizedBox(
                height: 15,
              ),
              if (show_result1 == 0)
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    if (defaultChoiceIndex == 1) {
                      if (/*makesure(Puissance) &&
                        makesure(Nombre) &&
                        makesure(Duree) &&*/
                          name.text.replaceAll(',', '.') != '' &&
                              pui.text.replaceAll(',', '.') !=
                                  '' /* &&
                            email.text.replaceAll(',', '.') != '' &&
                            pass.text.replaceAll(',', '.') != ''*/
                          ) {
                        remplir1();

                        Navigator.push(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (_) => Page2View(
                                  puissanceT: 0,
                                  ConsEnergie: ConsEnergie,
                                  energieWh: energieWh,
                                  pick: pick,
                                  onduleur: onduleur,
                                  TBattrie: TBattrie,
                                  AHBattrie: AHBattrie,
                                  FournirW: FournirW,
                                  exact: exact,
                                  soulage: soulage,
                                  soulage2: 0,
                                  stringnbr1: stringnbr1,
                                  stringnbr2: stringnbr2,
                                  poucentage: 1,
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
                      if (/*makesure(Puissance) &&
                        makesure(Nombre) &&
                        makesure(Duree) &&*/
                          name.text.replaceAll(',', '.') != '' &&
                              pui.text.replaceAll(',', '.') !=
                                  '' /* &&
                              email.text.replaceAll(',', '.') !=
                                  ''  &&
                            pass.text.replaceAll(',', '.') != ''*/
                          ) {
                        remplir3();

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
                                    soulage2: 0,
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
                                    onn6: onn6,
                                    poucentage: 0,
                                  )),
                        );
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
                      if (/*makesure(Puissance) &&
                        makesure(Nombre) &&
                        makesure(Duree) &&*/
                          name.text.replaceAll(',', '.') != '' &&
                              pui.text.replaceAll(',', '.') !=
                                  '' /*&&
                              email.text.replaceAll(',', '.') !=
                                  ''  &&
                            pass.text.replaceAll(',', '.') != ''*/
                          ) {
                        remplir2();

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
                                  soulage2: 0,
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
                        );
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
              if (show_result1 == 1)
                Center(
                    child: TextButton(
                  onPressed: () {
                    setState(() {
                      show_result1 = 0;
                      text1 = 'show result';
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
                                'Consomation max en Wh',
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
                              /*   Text('nombre de panneaux exacte	     '),
                              const SizedBox(
                                height: 5,
                              ),*/
                              AutoSizeText(
                                'nombre de panneaux soulage	    ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
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
                              /*Text(': ${exact.toStringAsFixed(2)} '),
                              const SizedBox(
                                height: 5,
                              ),*/
                              Text(': ${soulage.toStringAsFixed(0)}'),
                              const SizedBox(
                                height: 5,
                              ),
                            ])),
                  ],
                )
            ])));
  }
}
