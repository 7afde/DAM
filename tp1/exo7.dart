bool isIsogram(String str) {
  Set<String> seen = {};

  for (int i = 0; i < str.length; i++) {
    String letter = str[i].toLowerCase();
    if (seen.contains(letter)) {
      return false;
    }
    seen.add(letter);
  }

  return true;
}

void main() {
  print(isIsogram("lumberjacks")); // true
  print(isIsogram("background")); // true
  print(isIsogram("hello")); // false
}
