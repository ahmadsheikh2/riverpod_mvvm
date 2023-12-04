import 'package:riverpod_mvvm/export.dart';

class AuthUseCase extends BaseUseCase {
  final AuthRepo authRepo;

  AuthUseCase(this.authRepo);

  @override
  Future init() async {}

// Future<String> signupUser({
//   required String email,
//   required String password,
// }) async {
//   final either = await authRepo.signupUser(
//     email: email,
//     password: password,
//   );
//   return either.fold(
//     (l) {
//       return l.title;
//     },
//     (r) {
//       return 'User created successfully';
//     },
//   );
// }
}
