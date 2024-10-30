void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  print(common(a, b)); // [1, 2, 3, 5, 8, 13]
}

List<int> common(List<int> a, List<int> b) {
  Set<int> setA = a.toSet();
  Set<int> setB = b.toSet();
  return setA.intersection(setB).toList();
}
