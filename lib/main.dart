import 'package:riverpod_mvvm/core/export.dart';
import 'package:riverpod_mvvm/export.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
      runApp(
        const ProviderScope(
          child: MyApp(),
        ),
      );
    },
    (error, stack) {},
  );
}
