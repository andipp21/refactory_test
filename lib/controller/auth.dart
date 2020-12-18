import 'package:refactory_test/model/pengguna.dart';
import 'package:sqflite/sqflite.dart';

final String tablePengguna = 'pengguna';
final String columnId = '_id';
final String columnNama = 'nama';
final String columnEmail = 'email';
final String columnPassword = 'password';
final String columnCount = 'login_count';

class Auth {
  Database db;

  Future open(String path) async {
    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute('''
      create table $tablePengguna ( 
        $columnId integer primary key autoincrement, 
        $columnNama text not null,
        $columnEmail text not null,
        $columnPassword text not null,
        $columnCount integer not null)
      ''');
    });
  }

  Future<Pengguna> register(Pengguna pengguna) async {
    pengguna.id = await db.insert(tablePengguna, pengguna.toMap());
    return pengguna;
  }

  Future<Pengguna> login(String email, String password) async {
    List<Map> maps = await db.query(tablePengguna, columns: [
      columnId,
      columnNama,
      columnEmail,
      columnPassword,
      columnCount
    ]);
    if (maps.length > 0) {
      maps.forEach((element) {
        if (element[columnEmail] == email &&
            element[columnPassword] == password) {
          // upadateCount(element);

          return element;
        }
      });

      return Pengguna.fromMap(maps.first);
    }
    return null;
  }

  Function upadateCount(Pengguna pengguna) {}
}
