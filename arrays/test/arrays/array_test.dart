import 'package:arrays/arrays/array.dart';
import 'package:test/test.dart';

void main() {
  test('array creation', () {
    final array = Array<int>(capacity: 8, defaultValue: 0);

    expect(array.capacity, 8);
    expect(array.length, 0);
  });

  test('array insertion', () {
    final array = Array<int>(capacity: 2, defaultValue: 0);
    array.insert(42);
    array.insert(99);

    expect(array[0], 42);
    expect(array[1], 99);
    expect(() => array.insert(1), throwsA('Out of space'));
  });

  test('array insertion at index', () {
    final array = Array<int>(capacity: 2, defaultValue: 0);
    array.insertAt(0, value: 1);
    expect(array[0], 1);

    array.insertAt(0, value: 2);
    expect(array[0], 2);

    expect(() => array.insertAt(-1, value: 1), throwsA('Index out of bounds'));
    expect(() => array.insertAt(2, value: 1), throwsA('Index out of bounds'));
    expect(() => array.insertAt(0, value: 3), throwsA('Array full'));
  });

  test('array deleting', () {
    final array = Array<int>(capacity: 5, defaultValue: 0);
    expect(() => array.deleteAt(0), throwsA('Array is empty'));

    array.insert(11);
    array.insert(22);
    array.insert(33);
    array.insert(44);
    expect(() => array.deleteAt(array.length), throwsA('Index out of bounds'));

    array.deleteAt(array.length - 1);
    expect(array.length, 3);

    array.deleteAt(0);
    expect(array[0], 22);
    expect(array[1], 33);
  });

  test('array traversing', () {
    final array = Array<int>(capacity: 3, defaultValue: 0);
    array.insert(1);
    array.insert(2);

    var elements = '';
    array.traverse((value) {
      elements += '$value';
    });

    expect(elements, '12');
  });

  test('linear searching', () {
    final array = Array<int>(capacity: 6, defaultValue: 0);
    array.insert(9);
    array.insert(8);
    array.insert(7);
    array.insert(6);

    expect(array.search(value: 9), 0);
    expect(array.search(value: 6), 3);
    expect(array.search(value: 10), -1);
  });
}