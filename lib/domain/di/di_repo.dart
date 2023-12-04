import 'package:riverpod_mvvm/export.dart';

Future initializeRepoDependencies(WidgetRef ref) async {
  RepoDependencies repoDependencies = RepoDependencies();
  await repoDependencies.init(ref);

  //di.registerLazySingleton<AuthRepo>(() => repoDependencies.authRepo());
}
