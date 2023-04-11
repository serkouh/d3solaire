import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/material/scaffold.dart' as chuchu;

class batt_data extends StatefulWidget {
  const batt_data({Key? key}) : super(key: key);

  @override
  State<batt_data> createState() => batt_dataState();
}

class batt_dataState extends State<batt_data> {
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
  /*
  List<Trip> table1 = [
 Trip("2200",	"5",	"4.2"	,"9"	,"1980.00 MAD"	,
4000	5.8	5.5	12	2,420.00 MAD	
5500	19.5	14	23.9	2,950.00 MAD	
7500	25	18.5	30.6	3,500.00 MAD	
11000	32	25	39.2	4,350.00 MAD	
15000	40	32	49	5,550.00 MAD	
18000	47	38	50	6,480.00 MAD	
22000	51	45	60	7,550.00 MAD	
30000	70	60	81	10,550.00 MAD	
37000	80	75	90	13,150.00 MAD	
45000	98	92	130	16,550.00 MAD	
55000	128	115	150	18,950.00 MAD	];
*/
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

  @override
  Widget build(BuildContext context) {
    return chuchu.Scaffold(
      backgroundColor: Color.fromARGB(255, 207, 240, 255),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset(
              'lib/images/logo_d3_solaire-1-removebg-preview.png',
            ),
          ),
        ),
      ),
    );
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
