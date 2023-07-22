import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Brand {
  int? id;
  String? field1;
  String? field2;
  String? field3;
  String? field4;
  String? field5;
  String? field6;
  String? field7;
  String? field8;
  String? field9;
  String? field10;

  Brand({
    this.id,
    this.field1,
    this.field2,
    this.field3,
    this.field4,
    this.field5,
    this.field6,
    this.field7,
    this.field8,
    this.field9,
    this.field10,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'field1': field1,
      'field2': field2,
      'field3': field3,
      'field4': field4,
      'field5': field5,
      'field6': field6,
      'field7': field7,
      'field8': field8,
      'field9': field9,
      'field10': field10,
    };
  }

  static Brand fromMap(Map<String, dynamic> map) {
    return Brand(
      id: map['id'],
      field1: map['field1'],
      field2: map['field2'],
      field3: map['field3'],
      field4: map['field4'],
      field5: map['field5'],
      field6: map['field6'],
      field7: map['field7'],
      field8: map['field8'],
      field9: map['field9'],
      field10: map['field10'],
    );
  }
}

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'solar_power.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: _createBrandsTable,
    );
  }

  void _createBrandsTable(Database db, int version) async {
    await db.execute('''
    CREATE TABLE brands2 (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      field1 TEXT,
      field2 TEXT,
      field3 TEXT,
      field4 TEXT,
      field5 TEXT,
      field6 TEXT,
      field7 TEXT,
      field8 TEXT,
      field9 TEXT,
      field10 TEXT
    )
  ''');
  }

  Future<void> insertBrand(Brand brand) async {
    Database db = await database;
    await db.insert('brands2', brand.toMap());
  }

  Future<List<Brand>> getBrands() async {
    Database db = await database;
    List<Map<String, dynamic>> maps = await db.query('brands2');
    return List.generate(maps.length, (index) {
      return Brand.fromMap(maps[index]);
    });
  }

  Future<void> updateBrand(Brand brand) async {
    Database db = await database;
    await db.update(
      'brands2',
      brand.toMap(),
      where: 'id = ?',
      whereArgs: [brand.id],
    );
  }

  Future<void> deleteBrand(int id) async {
    Database db = await database;
    await db.delete(
      'brands2',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<String>> getColumnNames(String tableName) async {
    Database database = await initDatabase();
    List<Map<String, dynamic>> columns = await database.rawQuery(
      'PRAGMA table_info($tableName)',
    );
    List<String> columnNames =
        columns.map((column) => column['name'] as String).toList();
    return columnNames;
  }
}

class ExampleUsage {
  Future<void> example() async {
    DatabaseHelper dbHelper = DatabaseHelper();

    // Insert brand
    Brand brand = Brand(
      field1: 'Value 1',
      field2: 'Value 2',
      field3: 'Value 3',
      field4: 'Value 4',
      field5: 'Value 5',
      field6: 'Value 6',
      field7: 'Value 7',
      field8: 'Value 8',
      field9: 'Value 9',
      field10: 'Value 10',
    );
    await dbHelper.insertBrand(brand);

    // Get brands2
    List<Brand> brands2 = await dbHelper.getBrands();
    for (Brand brand in brands2) {
      print(brand.field1); // Example field access
    }

    // Update brand
    Brand updatedBrand = brands2.first;
    updatedBrand.field1 = 'Updated Value';
    await dbHelper.updateBrand(updatedBrand);

    // Delete brand
    int idToDelete = brands2.first.id!;
    await dbHelper.deleteBrand(idToDelete);

    // Get column names
    List<String> columnNames = await dbHelper.getColumnNames('brands2');
    print(columnNames);
  }
}
