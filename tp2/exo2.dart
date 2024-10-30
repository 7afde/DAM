class Teacher {
  final String lastName;
  final String firstName;
  final int hoursTaught;

  Teacher({
    required this.lastName,
    required this.firstName,
    required this.hoursTaught,
  });

  double calculateCost() {
    return 0.0;
  }
}

class TeacherResearcher extends Teacher {
  static const double monthlySalary = 2000;
  static const double extraHourRate = 40;
  static const int normalTeachingLoad = 160;

  TeacherResearcher({
    required String lastName,
    required String firstName,
    required int hoursTaught,
  }) : super(
            lastName: lastName, firstName: firstName, hoursTaught: hoursTaught);

  @override
  double calculateCost() {
    double yearlySalary = monthlySalary * 12;

    int extraHours =
        hoursTaught > normalTeachingLoad ? hoursTaught - normalTeachingLoad : 0;
    double extraPay = extraHours * extraHourRate;
    return yearlySalary + extraPay;
  }
}

class PartTimeWorker extends Teacher {
  static const double hourlyRate = 30;
  final String recruitingOrganization;

  PartTimeWorker({
    required String lastName,
    required String firstName,
    required int hoursTaught,
    required this.recruitingOrganization,
  }) : super(
            lastName: lastName, firstName: firstName, hoursTaught: hoursTaught);

  @override
  double calculateCost() {
    return hoursTaught * hourlyRate;
  }
}

class DoctoralStudent extends Teacher {
  static const double hourlyRate = 30;
  static const int maxHours = 96;

  DoctoralStudent({
    required String lastName,
    required String firstName,
    required int hoursTaught,
  }) : super(
            lastName: lastName, firstName: firstName, hoursTaught: hoursTaught);

  @override
  double calculateCost() {
    int effectiveHours = hoursTaught > maxHours ? maxHours : hoursTaught;
    return effectiveHours * hourlyRate;
  }
}

void main() {
  Teacher researcher =
      TeacherResearcher(lastName: 'Smith', firstName: 'John', hoursTaught: 180);
  print(
      '${researcher.firstName} ${researcher.lastName} cost: \$${researcher.calculateCost()}');

  Teacher partTime = PartTimeWorker(
      lastName: 'Doe',
      firstName: 'Jane',
      hoursTaught: 120,
      recruitingOrganization: 'External Org');
  print(
      '${partTime.firstName} ${partTime.lastName} cost: \$${partTime.calculateCost()}');

  Teacher doctoralStudent =
      DoctoralStudent(lastName: 'Brown', firstName: 'Alex', hoursTaught: 100);
  print(
      '${doctoralStudent.firstName} ${doctoralStudent.lastName} cost: \$${doctoralStudent.calculateCost()}');
}
