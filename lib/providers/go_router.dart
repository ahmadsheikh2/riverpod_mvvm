import 'package:riverpod_mvvm/export.dart';

enum AppRoute {
  main,
}

const Map<AppRoute, String> routeMap = {
  AppRoute.main: '/',
};

Widget slidingUpTransition(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}

final goRouterProvider = StateProvider<GoRouter>(
  (ref) {
    final router = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        /// Main View
        GoRoute(
          path: routeMap[AppRoute.main]!,
          name: AppRoute.main.name,
          builder: (context, state) => const MainView(),
        ),
      ],
    );

    return router;
  },
);
