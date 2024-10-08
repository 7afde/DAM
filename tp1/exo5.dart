int scrabbleScore(String word) {
  // Step 1: Define a simple map for letter values
  Map<String, int> letterValues = {
    'a': 1,
    'b': 3,
    'c': 3,
    'd': 2,
    'e': 1,
    'f': 4,
    'g': 2,
    'h': 4,
    'i': 1,
    'j': 8,
    'k': 5,
    'l': 1,
    'm': 3,
    'n': 1,
    'o': 1,
    'p': 3,
    'q': 10,
    'r': 1,
    's': 1,
    't': 1,
    'u': 1,
    'v': 4,
    'w': 4,
    'x': 8,
    'y': 4,
    'z': 10
  };

  // Step 2: Initialize a score variable
  int score = 0;

  // Step 3: Loop through each letter in the word
  for (int i = 0; i < word.length; i++) {
    // Step 4: Get the value of each letter from the map (in lowercase)
    String letter = word[i].toLowerCase();
    score += letterValues[letter] ?? 0; // If the letter isn't found, add 0
  }

  // Step 5: Return the total score
  return score;
}

void main() {
  print(scrabbleScore("flutter")); // 10
  print(scrabbleScore("Dart")); // 5
}
