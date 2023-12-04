import 'package:riverpod_mvvm/export.dart';

class MainView extends ConsumerStatefulWidget {
  const MainView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _MainViewState();
}

class _MainViewState extends ConsumerState<MainView> {
  // preserveSplashScreen() {
  //   Future.delayed(const Duration(seconds: 2), () {
  //     FlutterNativeSplash.remove();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return SplashPage();
    // preserveSplashScreen();
    // final token = ref.watch(tokenProvider);

    // if (token != '') {
    //   print('Botttom Nav Page');
    //   return const BottomNavPage();
    // } else {
    //   print('Landing Page');
    //   return const LandingPage();
    // }
  }
}
