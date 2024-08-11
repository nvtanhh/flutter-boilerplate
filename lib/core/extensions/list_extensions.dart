import 'dart:math';

extension ListExtension<T> on List<T> {
  List<T> unique() {
    return toSet().toList();
  }

  T randomElement() {
    if (isEmpty) {
      throw Exception('List is empty');
    }

    return this[Random().nextInt(length)];
  }

  List<E> mapIgnoringErrors<E>(E Function(T) f) {
    final list = map((e) {
      try {
        return f(e);
      } catch (_) {
        return null;
      }
    });

    return list.where((e) => e != null).toList().cast<E>();
  }

  List<T> whereIndexed(bool Function(int, T) f) {
    final list = <T>[];
    for (var i = 0; i < length; i++) {
      if (f(i, this[i])) {
        list.add(this[i]);
      }
    }

    return list;
  }
}
