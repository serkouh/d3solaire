import 'package:flutter/material.dart';
import 'package:solaire/screens/dabase_helper.dart';

class UpdateBrandPage extends StatefulWidget {
  final Brand brand;

  UpdateBrandPage({required this.brand});

  @override
  _UpdateBrandPageState createState() => _UpdateBrandPageState();
}

class _UpdateBrandPageState extends State<UpdateBrandPage> {
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

  @override
  void initState() {
    super.initState();
    _field1Controller.text = widget.brand.field1!;
    _field2Controller.text = widget.brand.field2!;
    _field3Controller.text = widget.brand.field3!;
    _field4Controller.text = widget.brand.field4!;
    _field5Controller.text = widget.brand.field5!;
    _field6Controller.text = widget.brand.field6!;
    _field7Controller.text = widget.brand.field7!;
    _field8Controller.text = widget.brand.field8!;
    _field9Controller.text = widget.brand.field9!;
    _field10Controller.text = widget.brand.field10!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Brand'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () async {
                Brand updatedBrand = Brand(
                  id: widget.brand.id,
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
                await _updateBrand(updatedBrand);
              },
              child: Text('Update'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _updateBrand(Brand brand) async {
    // Perform the update operation using your DatabaseHelper
    // For example:
    // await _databaseHelper.updateBrand(brand);
    // Once the update is done, you can navigate back or perform any other action
    Navigator.pop(context, brand);
  }
}
