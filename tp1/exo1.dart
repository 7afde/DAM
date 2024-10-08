bool isLeapYear(int year) {
  return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
}

void main() {
  print(isLeapYear(2024)); // true
  print(isLeapYear(2023)); // false
}
