import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import "package:sqflite/sqflite.dart";
import "package:path/path.dart";

class Zomato {
  int? orderNo;
  final String custName;
  final String hotelName;
  final String food;
  final double bill;

  Zomato({
    this.orderNo,
    required this.custName,
    required this.hotelName,
    required this.food,
    required this.bill,
  });

  Map<String, dynamic> zomatoMap() {
    return {
      'custName': custName,
      'hotelName': hotelName,
      'food': food,
      'bill': bill
    };
  }

  @override
  String toString() {
    return '{orderNo:$orderNo,custName:$custName,hotelName:$hotelName,food:$food,bill:$bill }';
  }
}

dynamic database;
Future<void> insertOrderData(Zomato obj) async {
  final localDB = await database;

  ///THE INSERT METHOD FROM THE DATABASE CLASS IS USED TO INSERT THE
//DATA IN THE OrderFood TABLE
  ///THE INSERT METHOD TAKES 3 PARAMETERS i.e TABLE NAME, MAP OF DATA
//TO BE PASSED, CONFLICT ALGORITHM
  ///THE CONFLICT ALGORITHM IS APPLIED WHEN DATA WITH SAME PRIMARY
//KEY IS INSERTED
  /// THE INSERT METHOD REQUIRES THE DATA IN FROMAT OF A MAP SO WE
//HAVE WRITTEN THE METHOD zomatoMap
  /// IN THE ZOMATO CLASS WHICH WILL RETURN THE MAP OF THE DATA
//PRESENT IN THE GIVEN OBJECT

  await localDB.insert(
    "OrderFood",
    obj.zomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future<List<Zomato>> getOrderData() async {
  final localDB = await database;

  ///THE QUERY METHOD FROM THE DATABASE CLASS RETURNS A LIST OF MAP
  ///WHICH CONTAINS ALL THE DATA PRESENT IN THE TABLE OrderFood.
  List<Map<String, dynamic>> orderMap = await localDB.query("OrderFood");

  ///HERE WE WILL CONVERT THE LIST OF MAP RETURNED FROM THE query
//METHOD INTO
  ///THE LIST OF OBJECTS OF Zomato
  return List.generate(orderMap.length, (i) {
    return Zomato(
      orderNo: orderMap[i]['orderNo'],
      custName: orderMap[i]['custName'],
      hotelName: orderMap[i]['hotelName'],
      food: orderMap[i]['food'],
      bill: orderMap[i]['bill'],
    );
  });
}

//delete
Future<void> deleteOrderData(int data) async {
  final localDB = await database;

  ///THE delete METHOD FROM TEH DATABASE CLASS IS USED TO DELETE THE
//PARTICULAR ENTRY FROM THE DATABASE
  ///THE delete METHOD TAKES 3 PARAMETERS i.e
  ///1. TABLE NAME 2. WHERE 3. WHEREARGS
  ///THE WHERE PARAMETER CONTAINS THE EXPRESSION ON WHICH THE DELETE
//OPERATION WILL BE PERFORMED
  ///i.e IN OUR CASE WE HAVE SPECIFIED orderNo=? i.e DELTE THE ENTRY
//WHERE orderNo is equal to ?
  ///THE ? WILL BE REPLACED WITH THE ARGUMENT SPECIFIED IN THE
//whereArgs PARAMETER i.e data
  ///SO THE EXPRESSION FINALLY BECOMES => delete the entry where
  ///(orderNo=data)
  await localDB.delete(
    "OrderFood",
    where: "orderNo = ?",
    whereArgs: [data],
  );
}

//update
Future<void> updateOrderData(Zomato obj) async {
  final localDB = await database;

  /// THE UPDATE METHOD FROM THE DATABASE IS USED TO UPDATE THE
//EXISTING ENTRY FROM THE DATABASE
  /// THE UPDATE METHOD TAKES 4 PARAMETERS i.e 1. TABLENAME 2. MAP OF
//UPDATED DATA 3. WHERE 4. WHEREARGS
  /// THE WHERE AND THE WHERE ARGS PARAMETER ARE SAME AS THE WHERE
//AND WHEREARGS PARAMETER OF THE DELETE METHOD
  await localDB.update(
    "OrderFood",
    obj.zomatoMap(),
    where: 'orderNo=?',
    whereArgs: [obj.orderNo],
  );
}

void main() async {
  ///WE HAVE COMMENTED THE runApp METHOD SO WE WILL HAVE TO CALL THE
//ensureInitialized method FROM THE WidgetsFlutterBinding class
  WidgetsFlutterBinding.ensureInitialized();

  ///THE openDatabase METHOD OF THE DATABASE CLASS IS CALLED HERE
//THIS METHOD RETURNS AN OBJECT OF DATABASE
  ///WE WILL ASSIGN THIS OBJECT OF DATABASE TO THE GLOBAL VARIABLE
//database.
  ///WE HAVE PASSED THE openDatabase class 3 parameters i.e
  ///1. path 2. version 3. onCreate
  ///THE PATH IS THE PATH WHERE THE DATABASES ARE STORED IT WILL BE
//DIFFERENT FOR EMULATORS AND REAL DEVICE
  ///getDatabasesPath METHOD WILL GIVE THE DEFAULT PATH FOR THE
//DATABASES FOR THE RESPECTIVE DEVICE
  ///THE VERSION WILL BE THE VERSION OF THE CURENT DATABASE
  ///onCreate callback WILL CONTAIN THE STEPS WHICH WE WANT TO
//PERFORM WHEN OUR DATABASE IS CREATED
  ///IN OUR CASE WE HAVE CREATED A TABLE OrderFood .
  ///THE OrderFood TABLE CONTAINS 4 COLUMNS i.e orderNo,
//custName,hotelName, food,bill,
  ///IN TEH SQLite TO SEPCIFY THE DATATYPE DOUBLE WE HAVE TO USE A
//DATATYPE REAL
  ///THE orderNo IS THE PRIMARY KEY.

  database = openDatabase(
    join(await getDatabasesPath(), "BlinkDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
    CREATE TABLE OrderFood(
    orderNo INTEGER PRIMARY KEY,
    custName TEXT,
    hotelName TEXT,
    food TEXT,
    bill REAL
  )
  ''');
    },
  );

//Insert
  Zomato order1 = Zomato(
      custName: "Ashish",
      hotelName: "Ganesh Bhel",
      food: "Bhel,Ragda Patice",
      bill: 530.50);

  insertOrderData(order1);

  Zomato order2 = Zomato(
      custName: "Kanha",
      hotelName: "SP Biryani",
      food: "Biryani,Rassa",
      bill: 830.00);

  insertOrderData(order2);

// Zomato order3 = Zomato(
  // custName: "Badhe",
  // hotelName: "SP Biryani",
  // food: "Biryani,Rassa",
  // bill: 830.00);

// insertOrderData(order3);

  print(await getOrderData());

// deleteOrderData(3);

// print(await getOrderData());

// order1 = Zomato(
  // orderNo: order1.orderNo,
  // custName: order1.custName,
  // hotelName: order1.hotelName,
  // food: "${order1.food}PaniPuri",
  // bill: order1.bill + 150.00,
// );

  // updateOrderData(order1);
  // print(await getOrderData());
}
