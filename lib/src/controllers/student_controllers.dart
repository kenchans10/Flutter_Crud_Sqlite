import 'package:crud/src/data/sqlite_services.dart';
import 'package:sqflite/sqflite.dart';

class StudentControllers {
  Future<Map<dynamic, dynamic>?> getStudent(int rollno) async {
    final Database db = await SqliteServices().initializeDB();
    List<Map> maps =
        await db.query('students', where: 'roll_no = ?', whereArgs: [rollno]);
    //getting student data with roll no.
    if (maps.isNotEmpty) {
      return maps.first;
    }
    return null;
  }
}
