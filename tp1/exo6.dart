List<String> findAnagrams(String target, List<String> candidates) {
  List<String> anagrams = [];

  String sortedTarget = (target.split('')..sort()).join();

  for (String candidate in candidates) {
    if (candidate.length == target.length &&
        (candidate.split('')..sort()).join() == sortedTarget &&
        candidate != target) {
      anagrams.add(candidate);
    }
  }

  return anagrams;
}

void main() {
  String target = "snow";
  List<String> candidates = ["owns", "sown", "stone", "snow"];

  print(findAnagrams(target, candidates)); // [owns, sown]
}
