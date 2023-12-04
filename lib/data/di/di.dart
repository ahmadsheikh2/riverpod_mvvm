import 'package:riverpod_mvvm/core/export.dart';
import 'package:riverpod_mvvm/export.dart';

class RepoDependencies {
  late SharedPreferences _sharedPreferences;
  late NetworkHelper _networkHelper;
  late Storage _storage;
  late StorageKeys _storageKeys;
  late FirebaseCoreWrapper _firebaseCore;
  late WidgetRef _ref;

  Future init(WidgetRef ref) async {
    try {
      _storageKeys = StorageKeys();
      _sharedPreferences = await SharedPreferences.getInstance();
      _storage = StorageImpl(sharedPreferences: _sharedPreferences);
      _networkHelper = NetworkHelperImpl(_storage);
      _firebaseCore = FirebaseCoreWrapper();
      _ref = ref;
      await _firebaseCore.init();
    } catch (e) {
      return;
    }
  }

  Storage storage() => _storage;

  StorageKeys storageKeys() => _storageKeys;

  // AuthRepo authRepo() => AuthRepoImpl(
  //       ref: _ref,
  //       networkHelper: _networkHelper,
  //       storage: _storage,
  //     );
}
