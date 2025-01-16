import 'package:arrays/arrays/array_sorted.dart';
import 'package:test/test.dart';

void main() {
  test('array creation', () {
    final array = ArraySorted<int>(capacity: 8, defaultValue: 0);

    expect(array.capacity, 8);
    expect(array.length, 0);
  });

  test('array insertion', () {
    final array = ArraySorted<int>(capacity: 2, defaultValue: 0);
    array.insert(42);
    array.insert(99);

    expect(array[0], 42);
    expect(array[1], 99);
    expect(() => array.insert(1), throwsA('Out of space'));
  });

  test('array deleting', () {
    final array = ArraySorted<int>(capacity: 5, defaultValue: 0);
    expect(() => array.delete(0), throwsA('Value does not exists'));

    array.insert(11);
    array.insert(22);
    array.insert(33);
    array.insert(44);

    array.delete(11);
    array.delete(44);
    expect(array.length, 2);
    expect(array[0], 22);
    expect(array[1], 33);
  });

  test('array traversing', () {
    final array = ArraySorted<int>(capacity: 3, defaultValue: 0);
    array.insert(1);
    array.insert(2);

    var elements = '';
    array.traverse((value) {
      elements += '$value';
    });

    expect(elements, '12');
  });

  test('binary searching', () {
    final array = ArraySorted<int>(capacity: 6, defaultValue: 0);
    array.insert(9);
    array.insert(8);
    array.insert(7);
    array.insert(6);

    expect(array.search(value: 9), 3);
    expect(array.search(value: 6), 0);
    expect(array.search(value: 10), -1);
  });

  test('binary single value', () {
    final array = ArraySorted<int>(capacity: 6, defaultValue: 0);
    array.insert(9);

    expect(array.search(value: 9), 0);
  });
}