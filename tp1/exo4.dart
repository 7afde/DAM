int reverseInt(int number) {
  int reversed = 0;
  while (number != 0) {
    int digit = number % 10;
    reversed = reversed * 10 + digit;
    number = (number / 10).floor();
  }
  return reversed;
}

void main() {
  print(reverseInt(1234)); // 4321
  print(reverseInt(12345)); // 54321
}
