import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';

import 'di_repo.dart';
import 'di_use_case.dart';

final di = GetIt.instance;

Future initializeDependencies(WidgetRef ref) async {
  await initializeRepoDependencies(ref);
  await initializeUseCaseDependencies(ref);
}
