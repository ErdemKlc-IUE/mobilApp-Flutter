import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

abstract class DatabaseHelper {
  static Database? _database;

  static Future<void> init() async {
    try {
      if (_database != null) return;
      String _path = join(await getDatabasesPath(), 'database.db');
      print(_path);
      String localPath = join('C:/Users/erdem/Documents/GitHub/se380_project/lib','myDB.db');
      print(localPath);
      String myDbPath = join(_path, 'se_380.db');
      print(myDbPath);

      _database = await openDatabase(
          myDbPath, singleInstance: true, version: 1, onCreate: onCreate);
    }
    catch (e) {
      print("Hata!!!!");
    }
  }

  static void onCreate(Database db, int version) async {
    String sqlQuery = "CREATE TABLE IF NOT EXISTS users (id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, password TEXT)";
    await db.execute(sqlQuery);
  }

}