void main() {
  print(isLeapYear(2024)); // true
  print(isLeapYear(2023)); // false
}

bool isLeapYear(int year) {
  return (year % 4 == 0);
}
