import 'package:riverpod_mvvm/export.dart';

class Loading extends ConsumerWidget {
  const Loading({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.watch(loadingProvider);

    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            color: Colors.black.withOpacity(0.5),
            child: const Center(
              child: LoadingAnimation(),
            ),
          ),
      ],
    );
  }
}
