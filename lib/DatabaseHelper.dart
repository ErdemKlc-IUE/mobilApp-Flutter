import 'package:se380_project/User.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

<<<<<<< Updated upstream

abstract class DatabaseHelper {
=======
class DatabaseHelper {
>>>>>>> Stashed changes
  static Database? _database;

  static Future<void> init() async {
    try {
      if (_database != null) return;
      String _path = join(await getDatabasesPath(), 'database.db');
      print(_path);
      String localPath = join('C:/Users/erdem/Documents/GitHub/se380_project/lib','myDB.db');
      //C:\Users\erdem\AppData\Local\Google\AndroidStudio2022.3\device-explorer\5.4  FWVGA API 23\data\user\0\com.example.se380_project\databases\database.db
      print(localPath);
      String myDbPath = join(_path, 'myDb.db');
      print(myDbPath);

      _database = await openDatabase(
          myDbPath, singleInstance: true, version: 1, onCreate: onCreate);
    }
    catch (e) {
      print("Hata!!!!");
    }
  }

  static void onCreate(Database db, int version) async {
    String sqlQuery = "CREATE TABLE IF NOT EXISTS table_users "
        "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, email TEXT NOT NULL, password TEXT NOT NULL, "
        "name_surname TEXT NOT NULL, card_number INTEGER NOT NULL, hourly_salary INTEGER NOT NULL, "
        "date_of_work TEXT NOT NULL, enter_hour TEXT NOT NULL, exit_hour TEXT NOT NULL,"
        "leave_days INTEGER NOT NULL,"
        "max_leave_days INTEGER NOT NULL, work_days INTEGER NOT NULL,"
        "PRIMARY KEY (id, card_number))";
    await db.execute(sqlQuery);
  }

  // I want to add to my database the email and password of the user
  // So I need to create two controllers for the two text fields

}