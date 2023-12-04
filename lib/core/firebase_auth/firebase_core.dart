import 'package:firebase_core/firebase_core.dart';

class FirebaseCore {
  Future init() async {
    await Firebase.initializeApp();
  }
}
