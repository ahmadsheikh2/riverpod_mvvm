import 'package:riverpod_mvvm/export.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    initializeDependencies(ref);
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: Constants.appName,
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
          surface: const Color(0xff003909),
        ),
        useMaterial3: true,
      ),
    );
  }
}
