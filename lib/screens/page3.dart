import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;
import 'package:solaire/screens/cosum.dart';
import 'package:solaire/screens/page3View.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Page3State createState() => Page3State();
}

class Page3State extends State<Page3>
    with AutomaticKeepAliveClientMixin<Page3> {
  int _activeStepIndex = 0;
  int _tabTextIconIndexSelected = 0;

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
  TextEditingController solar = TextEditingController();
  double initTime = 50;

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
  String text1 = 'show result';

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

  remplir2() {
    double temp2 = 0;
    print('aaaaaaaaaaaaaaaaaa');
    for (int i = 0; i < 12; i++) {
      if (Puissance[i].text != '' &&
          Nombre[i].text != '' &&
          Duree[i].text != '') {
        temp2 = temp2 +
            (double.parse(Puissance[i].text.replaceAll(',', '.')) *
                double.parse(Nombre[i].text.replaceAll(',', '.')) *
                double.parse(Duree[i].text.replaceAll(',', '.')));
        setState(() {
          ConsEnergie = temp2;
        });
      } else {
        break;
      }
    }
  }

  String nbr_string = '';

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
  double Ponduleur = 0;
  double soulage2 = 0;
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
    double temp1 = 0;
    double temp2 = 0;
    double temp3 = 0;
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
    temp2 = temp2 * (initTime / 100);
    setState(() {
      puissanceT = temp1;
      ConsEnergie = temp2;
      energieWh = ConsEnergie * 1.25;
      onduleur = puissanceT;
      pick = temp3;
      puissanceT > 2000 ? TBattrie = 48 : TBattrie = 24;
      AHBattrie = (energieWh * 1) / (0.8 * TBattrie);
      FournirW = energieWh / double.parse(solar.text.replaceAll(',', '.'));
      exact = FournirW / double.parse(name.text.replaceAll(',', '.'));
      soulage = (exact *
                  double.parse(name.text.replaceAll(',', '.')) *
                  double.parse(solar.text.replaceAll(',', '.'))) >=
              energieWh
          ? soulage = exact + 2
          : soulage = exact;
      Ponduleur = temp4;

      nbr_string =
          ((soulage * double.parse(email.text.replaceAll(',', '.'))) / 550)
              .toStringAsFixed(1);
      if (nbr_string[nbr_string.length - 1] == '6' ||
          nbr_string[nbr_string.length - 1] == '7' ||
          nbr_string[nbr_string.length - 1] == '8' ||
          nbr_string[nbr_string.length - 1] == '9') {
        nbr_string = (double.parse(nbr_string) + 1).toStringAsFixed(0);
      } else {
        nbr_string = (double.parse(nbr_string)).toStringAsFixed(0);
      }
      if (onduleur < 2000) {
        onn1 = 2;
        onn2 = 32;
        onn3 = 80;
        stringnbr1 = 2;
        paneauxnbr1 = soulage / 2;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 2;
      } else if (onduleur < 3000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        stringnbr1 = 3;
        paneauxnbr1 = soulage / 3;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 3;
      } else if (onduleur < 5000) {
        onn1 = 4;
        onn2 = 80;
        onn3 = 145;
        stringnbr1 = 3;
        paneauxnbr1 = soulage / 3;

        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 3;
      } else if (onduleur < 6000) {
        onn1 = 3;
        onn2 = 60;
        onn3 = 145;
        onn4 = 3;
        onn5 = 60;
        onn6 = 145;
        stringnbr1 = 3;
        stringnbr2 = 3;
        paneauxnbr1 = soulage / 6;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 3;
      } else if (onduleur < 10000) {
        onn1 = 4;
        onn2 = 80;
        onn3 = 145;
        onn4 = 4;
        onn5 = 80;
        onn6 = 145;
        stringnbr1 = 3;
        stringnbr2 = 3;
        paneauxnbr1 = soulage / 6;
        paneauxnbr1.toString().contains('.')
            ? paneauxnbr1.toString().substring(
                        paneauxnbr1.toString().indexOf('.'),
                        paneauxnbr1.toString().indexOf('.') + 1) !=
                    '0'
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 3;
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
                ? paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0)) + 1
                : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0))
            : paneauxnbr1 = double.parse(paneauxnbr1.toStringAsFixed(0));
        soulage = paneauxnbr1 * 3;
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
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Table(
                    columnWidths: {
                      0: FlexColumnWidth(4),
                      1: FlexColumnWidth(3),
                      2: FlexColumnWidth(2),
                      3: FlexColumnWidth(2),
                    },
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      TableRow(children: [
                        Center(
                            child: Text(
                          "Equipement",
                          style: TextStyle(),
                        )),
                        Center(child: Text("P en W")),
                        Center(child: Text("Unite")),
                        Center(child: Text("tps")),
                      ]),
                      TableRow(children: [
                        Center(child: Text("")),
                        Center(child: Text("")),
                        Center(child: Text("")),
                        Center(child: Text("")),
                      ]),
                      for (int i = 0; i < 12; i++)
                        TableRow(children: [
                          Center(
                              child: AutoSizeText(
                            things[i],
                            maxLines: 1,
                          )),
                          Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.bottom,

                                controller: Puissance[i],
                                onChanged: (value) {
                                  remplir2();
                                },
                                keyboardType: TextInputType.number,
                                //    obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: show1(hint1, i),
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 190, 188, 188))),
                              )),
                          Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.bottom,
                                controller: Nombre[i],
                                onChanged: (value) {
                                  remplir2();
                                },
                                keyboardType: TextInputType.number,
                                //    obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: hint2[i],
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 190, 188, 188))),
                              )),
                          Container(
                              height: 35,
                              width: MediaQuery.of(context).size.width * 0.15,
                              child: TextField(
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.bottom,
                                onChanged: (value) {
                                  remplir2();
                                },
                                controller: Duree[i],
                                keyboardType: TextInputType.number,
                                //    obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: hint3[i],
                                    hintStyle: TextStyle(
                                        color: Color.fromARGB(
                                            255, 190, 188, 188))),
                              )),
                        ]),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                width: MediaQuery.of(context).size.width * 0.72,
                child: Center(
                    child: CustomToggleTab(
                  tabs: ['Option 1', 'Option 2', 'Option 3'],
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
                )),
              )),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                      constraints: BoxConstraints(
                          minWidth: 0,
                          maxHeight: 225,
                          maxWidth:
                              MediaQuery.of(context).size.width * 0.66 + 5),
                      width: MediaQuery.of(context).size.width * 0.66 + 5,
                      child: Row(
                        children: [
                          Container(
                              width:
                                  MediaQuery.of(context).size.width * 0.44 + 5,
                              child: Column(
                                children: [
                                  Center(
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.66 +
                                              5,
                                          child: Row(
                                            children: [
                                              Center(
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.22,
                                                      child: TextField(
                                                        onChanged: (input) {},
                                                        controller: name,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText: 'Pv en W',
                                                        ),
                                                      ))),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Center(
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.22,
                                                      child: TextField(
                                                        onChanged: (input) {},
                                                        controller: solar,
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          labelText:
                                                              'Ensoleiment',
                                                        ),
                                                      ))),
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
                                            ],
                                          ))),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Center(
                                      child: Container(
                                          width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.66 +
                                              5,
                                          child: Row(
                                            children: [
                                              Center(
                                                  child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.22,
                                                child: Text(
                                                  'PC en Wh : ${ConsEnergie.toStringAsFixed(0)}',
                                                ),
                                              )),
                                              const SizedBox(
                                                width: 2.5,
                                              ),
                                              Center(
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
                                                      ))),
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
                                          ))),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Center(
                                      child: TextButton(
                                    onPressed: () {
                                      if (makesure(Puissance) &&
                                              makesure(Nombre) &&
                                              makesure(Duree) &&
                                              name.text.replaceAll(',', '.') !=
                                                  '' &&
                                              email.text.replaceAll(',', '.') !=
                                                  '' /* &&
                        pass.text.replaceAll(',', '.') != ''*/
                                          ) {
                                        remplir1();
                                        print(
                                            'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa');
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute<dynamic>(
                                              builder: (_) => Page3View(
                                                  puissanceT: puissanceT,
                                                  ConsEnergie: ConsEnergie,
                                                  energieWh: energieWh,
                                                  pick: pick,
                                                  onduleur: onduleur,
                                                  TBattrie: Ponduleur,
                                                  AHBattrie: AHBattrie,
                                                  FournirW: FournirW,
                                                  exact: exact,
                                                  soulage: soulage,
                                                  soulage2: soulage2,
                                                  stringnbr1: stringnbr1,
                                                  stringnbr2: stringnbr2,
                                                  paneauxnbr1: paneauxnbr1,
                                                  paneauxnbr2: name.text != ''
                                                      ? double.parse(name.text
                                                          .replaceAll(',', '.'))
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
                                    },
                                    child: Text(text1),
                                  )),
                                ],
                              )),
                          Container(
                              constraints: BoxConstraints(
                                  minWidth: 0,
                                  maxHeight: 200,
                                  maxWidth:
                                      MediaQuery.of(context).size.width * 0.22),
                              child: SfRadialGauge(
                                  title: GaugeTitle(
                                    text: 'Ratio Cons  jour/nuit',
                                    textStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 25, 83, 163),
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
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(
                                                        255, 25, 83, 163),
                                                  )))
                                        ])
                                  ])),
                        ],
                      ))),
              if (show_result1 == 0)
                if (show_result1 == 1)
                  Center(
                      child: TextButton(
                    onPressed: () {
                      setState(() {
                        show_result1 = 0;
                        text1 = 'show result                    ';
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
                                'Puissance demarrage  W         ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'Puissance onduleur calcule               ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              AutoSizeText(
                                'puissance onduleur disponible          ',
                                maxLines: 1,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              /*   Text('Capacite utile en Ah	 '),
                              const SizedBox(
                                height: 5,
                              ),*/
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
                                'nombre de panneaux majoree	    ',
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
                              Text(': ${Ponduleur.toStringAsFixed(2)} '),
                              const SizedBox(
                                height: 5,
                              ),
                              /* Text(': ${AHBattrie.toStringAsFixed(2)}  '),
                              const SizedBox(
                                height: 5,
                              ),*/
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

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
