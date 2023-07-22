import 'package:flutter/material.dart';
import 'package:solaire/screens/dabase_helper.dart';

class AddRowPage extends StatefulWidget {
  @override
  _AddRowPageState createState() => _AddRowPageState();
}

class _AddRowPageState extends State<AddRowPage> {
  TextEditingController _field1Controller = TextEditingController();
  TextEditingController _field2Controller = TextEditingController();
  TextEditingController _field3Controller = TextEditingController();
  TextEditingController _field4Controller = TextEditingController();
  TextEditingController _field5Controller = TextEditingController();
  TextEditingController _field6Controller = TextEditingController();
  TextEditingController _field7Controller = TextEditingController();
  TextEditingController _field8Controller = TextEditingController();
  TextEditingController _field9Controller = TextEditingController();
  TextEditingController _field10Controller = TextEditingController();

  DatabaseHelper _databaseHelper = DatabaseHelper();

  @override
  void dispose() {
    _field1Controller.dispose();
    _field2Controller.dispose();
    _field3Controller.dispose();
    _field4Controller.dispose();
    _field5Controller.dispose();
    _field6Controller.dispose();
    _field7Controller.dispose();
    _field8Controller.dispose();
    _field9Controller.dispose();
    _field10Controller.dispose();
    super.dispose();
  }

  void _addRow() async {
    Brand newBrand = Brand(
      field1: _field1Controller.text,
      field2: _field2Controller.text,
      field3: _field3Controller.text,
      field4: _field4Controller.text,
      field5: _field5Controller.text,
      field6: _field6Controller.text,
      field7: _field7Controller.text,
      field8: _field8Controller.text,
      field9: _field9Controller.text,
      field10: _field10Controller.text,
    );

    await _databaseHelper.insertBrand(newBrand);

    Navigator.pop(context,
        newBrand); // Return the newly added brand to the previous screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Row'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _field1Controller,
              decoration: InputDecoration(labelText: 'Field 1'),
            ),
            TextField(
              controller: _field2Controller,
              decoration: InputDecoration(labelText: 'Field 2'),
            ),
            TextField(
              controller: _field3Controller,
              decoration: InputDecoration(labelText: 'Field 3'),
            ),
            TextField(
              controller: _field4Controller,
              decoration: InputDecoration(labelText: 'Field 4'),
            ),
            TextField(
              controller: _field5Controller,
              decoration: InputDecoration(labelText: 'Field 5'),
            ),
            TextField(
              controller: _field6Controller,
              decoration: InputDecoration(labelText: 'Field 6'),
            ),
            TextField(
              controller: _field7Controller,
              decoration: InputDecoration(labelText: 'Field 7'),
            ),
            TextField(
              controller: _field8Controller,
              decoration: InputDecoration(labelText: 'Field 8'),
            ),
            TextField(
              controller: _field9Controller,
              decoration: InputDecoration(labelText: 'Field 9'),
            ),
            TextField(
              controller: _field10Controller,
              decoration: InputDecoration(labelText: 'Field 10'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addRow,
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
