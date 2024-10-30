void main() {
  print(reverseInt(-15)); // 51
  print(reverseInt(12345)); // 54321
}

int reverseInt(int number) {
  int reversed = 0;
  int absNumber = number.abs();
  while (absNumber != 0) {
    int digit = absNumber % 10;
    reversed = reversed * 10 + digit;
    absNumber = (absNumber / 10).floor();
  }
  return number < 0 ? -reversed : reversed;
}
