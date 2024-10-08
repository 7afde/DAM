String capitalizeFirstLetter(String str) {
  List<String> words = str.split(' ');
  for (int i = 0; i < words.length; i++) {
    words[i] = words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
  }
  return words.join(' ');
}

void main() {
  print(capitalizeFirstLetter('a short sentence')); // A Short Sentence
  print(capitalizeFirstLetter('a lazy fox')); // A Lazy Fox
  print(capitalizeFirstLetter('look, it is working!')); // Look, It Is Working!
}
