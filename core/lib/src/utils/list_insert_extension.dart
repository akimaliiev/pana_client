extension ListInsertExtension<T> on List<T> {
  List<T> separate(T separator) {
    if (length <= 1) return List<T>.of(this);

    final List<T> separated = <T>[];
    final Iterator<T> it = iterator..moveNext();
    separated.add(it.current);

    while (it.moveNext()) {
      separated
        ..add(separator)
        ..add(it.current);
    }

    return separated;
  }
}
