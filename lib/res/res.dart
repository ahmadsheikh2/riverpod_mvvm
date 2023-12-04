import 'package:riverpod_mvvm/export.dart';

late Sizes sizes;
late AppColors colors;

void initializeResources(BuildContext context) {
  sizes = Sizes();
  sizes.initializeSize(context);
  colors = AppColors();
}
