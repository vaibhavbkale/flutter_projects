import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  database = openDatabase(
    join(await getDatabasesPath(), "Zomato.db"),
    version: 1,
    onCreate: (db, version) async {
      db.execute('''
        CREAT TABLE OrderFood(
          orderNo INTEGER PRIMARY KEY,
          custName TEXT,
          hotelName TEXT,
          food TEXT,
          bill REAL
        )
      ''');
    },
  );
}
