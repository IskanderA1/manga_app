extension ExtensionList<T> on List<T> {
  bool equals(List<T> list) {
    for (var element in this) {
      if (!list.contains(element)) {
        return false;
      }
    }
    for (var element in list) {
      if (!contains(element)) {
        return false;
      }
    }
    return true;
  }
}