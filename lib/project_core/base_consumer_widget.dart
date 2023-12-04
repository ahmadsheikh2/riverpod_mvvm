import 'package:riverpod_mvvm/export.dart';

abstract class BaseConsumerWidget<T> extends ConsumerWidget {
  const BaseConsumerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return build(context, ref);
  }

  Widget buildR(BuildContext context);

  void initializeListeners(WidgetRef ref);
}
