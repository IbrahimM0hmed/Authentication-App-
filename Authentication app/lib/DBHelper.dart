import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/text.dart';
import 'package:sqflite/sqflite.dart';

import 'class.dart';

class DbHelper {
  final String TABLE_NAME = 'Contact';
  static Database db_instance;

  Future<Database> get db async {
    if (db_instance == null) db_instance = await initDB();
    return db_instance;
  }

  initDB() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'EDMTDev.db');
    var db = await openDatabase(path, version: 1, onCreate: onCreateFunc);
  }

  void onCreateFunc(Database db, int version) async {
    await db.execute(
        'CREATE TABLE $TABLE_NAME( id INTEGER PRIMARY KEY AUTOINCREMENT ,name TEXT ,phone TEXT);');
  }
Future<List<Contact>> getcontacts()async{
    var db_connection =await db;
    List <Map> list =await db_connection.rawQuery('SELECT * FROM $TABLE_NAME');
List<Contact> contact=new List();
for(int i=0;i<list.length;i++);{
  Contact contact= new Contact();
    }
}
}
