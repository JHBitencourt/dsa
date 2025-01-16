import 'package:arrays/arrays/dynamic_array.dart';
import 'package:test/test.dart';

Future<void> main() async {
  test('array creation', () {
    final array = DynamicArray<int>(capacity: 8, defaultValue: 0);

    expect(array.capacity, 8);
    expect(array.length, 0);
  });

  test('array dynamic size', () {
    final array = DynamicArray<int>(capacity: 2, defaultValue: 0);
    array.insert(11);
    array.insert(33);
    array.insert(22);
    array.insert(44);
    array.insert(55);

    expect(array.capacity, 8);
  });


  test('array dynamic shrink', () {
    final array = DynamicArray<int>(capacity: 2, defaultValue: 0);
    array.insert(11);
    array.insert(33);
    array.insert(22);
    array.insert(44);
    array.insert(55);
    expect(array.capacity, 8);

    array.delete(11);
    array.delete(22);
    array.delete(33);
    expect(array.capacity, 4);
  });
}
