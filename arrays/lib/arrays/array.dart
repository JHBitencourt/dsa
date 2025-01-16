class Array<E> {
  final List<E> _array;
  int length;
  int capacity;

  Array({required this.capacity, required E defaultValue})
      : length = 0,
        _array = List<E>.filled(capacity, defaultValue);

  /// O(1)
  void insert(E value) {
    if (length >= capacity) throw 'Out of space';
    _array[length] = value;
    length++;
  }

  /// O(n)
  void insertAt(int index, {required E value}) {
    if (index < 0 || index >= capacity) throw 'Index out of bounds';
    if (length == capacity) throw 'Array full';

    if (index > length - 1) {
      insert(value);
    } else {
      for (var i = length - 1; i >= index; i--) {
        _array[i + 1] = _array[i];
      }
      _array[index] = value;
      length++;
    }
  }

  /// O(n)
  void deleteAt(int index) {
    if (length == 0) throw 'Array is empty';
    if (index < 0 || index >= length) throw 'Index out of bounds';

    if (index < length - 1) {
      // not the last
      for (int i = index; i < length - 1; i++) {
        _array[i] = _array[i + 1];
      }
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
    for (int i = 0; i < length; i++) {
      if (_array[i] == value) return i;
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
  final array = Array<int>(capacity: 6, defaultValue: 0);
  array.insert(40);
  array.insert(2);
  array.insert(3);
  array.insert(4);
  print(array);

  array.insertAt(42, value: 1);
  array.insertAt(10, value: 0);
  print(array);
  array.traverse(print);
}
