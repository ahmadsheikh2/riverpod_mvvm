import 'package:riverpod_mvvm/export.dart';

final splashViewModel = StateNotifierProvider<SplashViewModel, BaseState>(
  (ref) {
    return SplashViewModel(
      state: BaseState(),
    );
  },
);
