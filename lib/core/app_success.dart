// ignore_for_file: unnecessary_overrides

class AppSuccess {
  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is AppSuccess;

  @override
  int get hashCode => super.hashCode;
}
