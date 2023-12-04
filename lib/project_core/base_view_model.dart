import 'package:riverpod_mvvm/export.dart';

abstract class BaseViewModel extends StateNotifier<BaseState> {
  BaseViewModel(BaseState state) : super(state);

  Future init();
}
