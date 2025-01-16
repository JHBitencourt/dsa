class ArraySorted<E extends Comparable> {
  final List<E> _array;
  int length;
  int capacity;

  ArraySorted({required this.capacity, required E defaultValue})
      : length = 0,
        _array = List<E>.filled(capacity, defaultValue);

  /// O(n)
  void insert(E value) {
    if (length >= capacity) throw 'Out of space';

    int i = length - 1;
    for (i; (i >= 0 && _array[i].compareTo(value) > 0); i--) {
      _array[i + 1] = _array[i];
    }
    _array[i + 1] = value;
    length++;
  }

  /// O(n)
  void delete(E value) {
    final index = search(value: value);
    if (index == -1) throw 'Value does not exists';

    for (var i = index; i < length - 1; i++) {
      _array[i] = _array[i + 1];
    }
    length--;
  }

  /// O(n)
  void traverse(void Function(E value) function) {
    for (int i = 0; i < length; i++) {
      function(_array[i]);
    }
  }

  ///O(n)
  int search({required E value}) {
    var left = 0;
    var right = length - 1;

    while (left <= right) {
      var midIndex = ((left + right) / 2).floor();
      var midValue = _array[midIndex];
      if (value == midValue) {
        return midIndex;
      } else if (midValue.compareTo(value) > 0) {
        right = midIndex - 1;
      } else {
        left = midIndex + 1;
      }
    }

    return -1;
  }

  /// O(1)
  E operator [](int index) => _array[index];

  /// O(n)
  @override
  String toString() {
    var string = '[';
    for (int i = 0; i < length; i++) {
      string += '${_array[i]}';
      if (i < length - 1) string += ',';
    }
    return '$string]';
  }
}

void main() {
  final array = ArraySorted<int>(capacity: 6, defaultValue: 0);
  array.insert(40);
  array.insert(2);
  array.insert(3);
  array.insert(4);
  print(array);
}