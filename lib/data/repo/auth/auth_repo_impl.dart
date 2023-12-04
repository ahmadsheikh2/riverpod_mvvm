import 'package:riverpod_mvvm/export.dart';

class AuthRepoImpl implements AuthRepo {
  final WidgetRef ref;
  final NetworkHelper networkHelper;
  final Storage storage;

  AuthRepoImpl({
    required this.ref,
    required this.networkHelper,
    required this.storage,
  });

  // @override
  // Future<Either<AppError, AppSuccess>> signupUser({
  //   required String email,
  //   required String password,
  // }) async {
  //   try {
  //     final response = await networkHelper.post(
  //       EndPoints().signupUser(),
  //       body: {
  //         "email": email,
  //         "password": password,
  //       },
  //     );
  //     var data = jsonDecode(response.body);
  //     if (response.statusCode == 200) {
  //       ref.read(tokenProvider.notifier).setToken(data['token']);
  //       setJWTToken(data['token']);
  //       return Right(AppSuccess());
  //     }  else {
  //       return Left(
  //         AppError(
  //           title: data["message"],
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     return Left(
  //       AppError(
  //         title: e.toString(),
  //       ),
  //     );
  //   }
  // }

}
