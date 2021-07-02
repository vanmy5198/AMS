import '../../../services/database_handler.dart';
import '../../../services/injection_pool.dart';
import 'asset_model.dart';

class Models {
  static late final DatabaseHandler _dbHandler =
      InjectionPool.injector!.get<DatabaseHandler>();

  // insert data to Assets Table
  Future<void> insertAsset(AssetModel assetModel) async {
    await _dbHandler.db!.insert('assets', assetModel.toJson());
  }

  // get all data from Assets Table
  Future<List<Asset>> getAllAsset() async {
    return (await _dbHandler.db!.query('assets'))
        .map((Map<String, Object?> e) => Asset.fromJson(e))
        .toList();
  }

  // update data to Assets Table
  Future<void> updateAsset(AssetModel assetModel) async {
    await _dbHandler.db!.update(
      'assets',
      assetModel.toJson(),
      where: 'tag = ?',
      whereArgs: <String>[assetModel.tag],
    );
  }

  // delete data from Assets Table
  Future<void> deleteAsset(String tag) async {
    await _dbHandler.db!.delete(
      'assets',
      where: 'tag = ?',
      whereArgs: <String>[tag],
    );
  }

  Future<Asset> getAsset(String tag) async {
    final List<Map<String, Object?>> maps = await _dbHandler.db!.query(
      'assets',
      where: 'tag = ?',
      whereArgs: <String>[tag],
    );

    if (maps.isNotEmpty) {
      return Asset.fromJson(maps.first);
    } else {
      throw Exception('ID $tag not found');
    }
  }
}
