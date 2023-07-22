import 'package:flutter/material.dart';
import 'package:solaire/screens/addRow.dart';
import 'package:solaire/screens/dabase_helper.dart';
import 'package:solaire/screens/update_db.dart';

class BrandsListScreen extends StatefulWidget {
  @override
  _BrandsListScreenState createState() => _BrandsListScreenState();
}

class _BrandsListScreenState extends State<BrandsListScreen> {
  DatabaseHelper _databaseHelper = DatabaseHelper();
  List<Brand> _brands2 = [];

  @override
  void initState() {
    super.initState();
    _fetchBrands();
  }

  Future<void> _fetchBrands() async {
    List<Brand> brands2 = await _databaseHelper.getBrands();
    setState(() {
      _brands2 = brands2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brand List'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue, // Set the background color to blue
        ),
        child: SingleChildScrollView(
          child: Center(
              child: Wrap(
            alignment: WrapAlignment.start,
            spacing: 8.0, // Horizontal spacing between containers
            runSpacing: 8.0, // Vertical spacing between rows
            children: _brands2.map((brand) {
              return Container(
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: EdgeInsets.all(16.0),
                margin: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      brand.field1!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text('Field2: ${brand.field2}'),
                    Text('Field3: ${brand.field3}'),
                    Text('Field4: ${brand.field4}'),
                    Text('Field5: ${brand.field5}'),
                    Text('Field6: ${brand.field6}'),
                    Text('Field7: ${brand.field7}'),
                    Text('Field8: ${brand.field8}'),
                    Text('Field9: ${brand.field9}'),
                    Text('Field10: ${brand.field10}'),
                    SizedBox(height: 8.0),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UpdateBrandPage(brand: brand),
                          ),
                        );
                      },
                      child: Text('Update'),
                    ),
                  ],
                ),
              );
            }).toList(),
          )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddRowPage()),
          );
          _fetchBrands(); // Fetch brands again after returning from AddRowPage
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
