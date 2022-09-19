import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

Future<String> initDb() async {
  var dbName = 'split_bill.db';
  final databasePath = await getDatabasesPath();
  final path = join(databasePath, dbName);

  if (await Directory(dirname(path)).exists()) {
    await deleteDatabase(path);
  } else {
    try {
      await Directory(dirname(path)).create(recursive: true);
    } catch (e) {
      print(e);
    }
  }
  return path;
}
