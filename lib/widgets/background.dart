import 'package:riverpod_mvvm/export.dart';
import 'package:riverpod_mvvm/gen/colors.gen.dart';
import 'package:riverpod_mvvm/gen/fonts.gen.dart';

class Background extends ConsumerWidget {
  final String backgroundImage;
  final Widget body;
  final bool showAppBar;
  final String? appBarTitle;
  final bool safeAreaBottom;

  const Background({
    required this.backgroundImage,
    required this.body,
    this.appBarTitle,
    this.showAppBar = false,
    this.safeAreaBottom = false,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(backgroundImage),
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: showAppBar
              ? AppBar(
                  leadingWidth: 78,
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  leading: const Padding(
                    padding:  EdgeInsets.only(
                      left: 22,
                      top: 5,
                      bottom: 5,
                      right: 10,
                    ),
                    // child: OutlinedButton(
                    //   onPressed: () => context.pop(),
                    //   style: OutlinedButton.styleFrom(
                    //     minimumSize: const Size(0, 0),
                    //     tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    //     padding: const EdgeInsets.all(10),
                    //     side: const BorderSide(
                    //       color: ColorName.grey,
                    //     ),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //   ),
                    //   child: SvgPicture.asset(
                    //     Assets.icons.backArrow,
                    //   ),
                    // ),
                  ),
                  title: appBarTitle != null
                      ? Text(
                          appBarTitle!,
                          style: const TextStyle(
                            fontFamily: FontFamily.clashDisplayBold,
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: ColorName.black,
                          ),
                        )
                      : null,
                )
              : null,
          body: SafeArea(
            bottom: safeAreaBottom,
            child: body,
          ),
        ),
      ),
    );
  }
}
