import 'package:riverpod_mvvm/export.dart';

Future initializeUseCaseDependencies(WidgetRef ref) async {
  RepoDependencies repoDependencies = RepoDependencies();
  await repoDependencies.init(ref);

  di.registerLazySingleton<AuthUseCase>(
    () => AuthUseCase(
      di.get<AuthRepo>(),
    ),
  );
}
