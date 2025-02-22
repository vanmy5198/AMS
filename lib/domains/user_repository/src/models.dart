import '../../../services/database_handler.dart';
import '../../../services/injection_pool.dart';
import 'user_model.dart';

class UserModels {
  static const String _kTableName = 'users';
  static late final DatabaseHandler _dbHandler =
      InjectionPool.injector!.get<DatabaseHandler>();

  Future<void> insertUser(UserModel userModel) async {
    await _dbHandler.db!.rawInsert(
      'INSERT INTO $_kTableName(fullName, dob, gender, address, urlImage) VALUES(?,?,?,?,?)',
      <Object>[
        userModel.fullName,
        userModel.dob,
        userModel.gender,
        userModel.address,
        userModel.urlImage
      ],
    );
  }

  Future<List<User>> getAllUser() async {
    return (await _dbHandler.db!.query(_kTableName))
        .map((Map<String, Object?> e) => User.fromJson(e))
        .toList();
  }

  Future<void> updateUser(UserModel userModel) async {
    await _dbHandler.db!.update(
      _kTableName,
      userModel.toJson(),
      where: 'userId = ?',
      whereArgs: <int>[userModel.userId],
    );
  }

  Future<void> deleteUser(int userId) async {
    await _dbHandler.db!.delete(
      _kTableName,
      where: 'userId = ?',
      whereArgs: <int>[userId],
    );
  }

  Future<User> getUser(int userId) async {
    final List<Map<String, Object?>> maps = await _dbHandler.db!.query(
      _kTableName,
      where: 'userId = ?',
      whereArgs: <int>[userId],
    );

    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      throw Exception('ID $userId not found');
    }
  }
}
