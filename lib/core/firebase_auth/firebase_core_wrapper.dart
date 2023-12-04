import 'package:firebase_core/firebase_core.dart';

class FirebaseCoreWrapper {
  Future init() async {
    await Firebase.initializeApp();
  }
}
