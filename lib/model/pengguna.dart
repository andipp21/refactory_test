final String tablePengguna = 'pengguna';
final String columnId = '_id';
final String columnNama = 'nama';
final String columnEmail = 'email';
final String columnPassword = 'password';
final String columnCount = 'login_count';

class Pengguna {
  int id;
  String nama;
  String email;
  String password;
  int loginCount;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      columnNama: nama,
      columnEmail: email,
      columnPassword: password,
      columnCount: 0
    };
    if (id != null) {
      map[columnId] = id;
    }
    return map;
  }

  Pengguna();

  Pengguna.fromMap(Map<String, dynamic> map) {
    id = map[columnId];
    nama = map[columnNama];
    email = map[columnEmail];
    password = map[columnPassword];
    loginCount = map[columnCount];
  }
}
