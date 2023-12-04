import 'package:riverpod_mvvm/export.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _SplashPageState();
  }
}

class _SplashPageState extends BaseConsumerState<SplashPage, SplashViewModel> {
  @override
  Widget customBuild(BuildContext context) {
    return const Scaffold();
  }

  @override
  StateNotifierProvider<BaseViewModel, BaseState> getProvider() =>
      splashViewModel;

  @override
  void initializeListener(
    StateNotifierProvider<BaseViewModel, BaseState> provider,
  ) {
    ref.listen(
      provider,
      (previous, next) {
        switch (next.runtimeType) {
          // case NavigateToOnBoardingScreen:
          //   {
          //     context.goNamed(AppRoute.landingPage.name);
          //     break;
          //   }
        }
      },
    );
  }
}
