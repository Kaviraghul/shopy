// extention on String

extension NonNullString on String? {
  String onEmpty() {
    if (this == null) {
      return "";
    } else {
      return this!;
    }
  }
}

// extention on Integer

extension NonNullInteger on int? {
  int onZero() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}
