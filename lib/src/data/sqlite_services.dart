import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqliteServices {
  Future<Database> initializeDB() async {
    String dbPath = await getDatabasesPath();
    return openDatabase(join(dbPath, 'smed.db'), onCreate: (db, version) async {
      await db.execute(
          "CREATE TABLE IF NOT EXISTS students( id primary key, name varchar(255) not null, roll_no int not null, address varchar(255) not null);");

      print("Table Created");
    }, version: 1);
  }
}
