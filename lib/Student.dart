class Student {
  String name, subject;
  double point;

  Student(this.name, this.subject, this.point);
}

//Dummy data
List<Student> generateStudents() {
  List<Student> students = List<Student>();
  students.add(Student('Lê Việt Thắng', 'Flutter', 6));
  students.add(Student('Nguyễn Duy Sim', 'Flutter', 7));
  students.add(Student('Ngô Quang Trung', 'Flutter', 4));
  return students;
}
