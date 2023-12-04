import 'package:riverpod_mvvm/export.dart';

/// [T] is [ConsumerStatefulWidget] from RiverPod
/// [V] is [BaseViewModel] and it's a [StateNotifier] of type [BaseState]
abstract class BaseConsumerState<T extends ConsumerStatefulWidget, V extends BaseViewModel> extends ConsumerState<T> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        viewModel().init();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    initializeResources(context);
    initializeListener(getProvider());
    return customBuild(context);
  }

  Widget customBuild(BuildContext context);

  StateNotifierProvider<BaseViewModel, BaseState> getProvider();

  void initializeListener(
    StateNotifierProvider<BaseViewModel, BaseState> provider,
  );

  V viewModel() => ref.read(getProvider().notifier) as V;
}
