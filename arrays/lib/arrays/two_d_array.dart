///row-based traverse
List rowBased(List array) {
  final result = [];
  for (var row = 0; row < array.length; row++) {
    for (var col = 0; col < array[row].length; col++) {
      result.add(array[row][col]);
    }
  }
  return result;
}

///col-based traverse
///assumes all row are same size
List colBased(List array) {
  final result = [];
  for (var col = 0; col < array[0].length; col++) {
    for (var row = 0; row < array.length; row++) {
      result.add(array[row][col]);
    }
  }
  return result;
}

///col-based traverse with dynamic column sizes
List colBasedDynamicSize(List array) {
  final result = [];

  var maxCol = 0;
  for (var i = 0; i < array.length; i++) {
    if (array[0].length > maxCol) maxCol = array[0].length;
  }

  for (var col = 0; col < maxCol; col++) {
    for (var row = 0; row < array.length; row++) {
      if (array[row].length > col) {
        result.add(array[row][col]);
      }
    }
  }
  return result;
}
