void main () {}
// Abstract class
abstract class University {
  String name;
  String location;

  University(this.name, this.location);

  void displayInfo();
}

// Subclass Student
class Student extends University {
  String studentID;
  String major;

  Student(String name, String location, this.studentID, this.major)
      : super(name, location);

  @override
  void displayInfo() {
    print("Student at $name, Major: $major, ID: $studentID");
  }

  void study() {
    print("Student $studentID is studying.");
  }
}

// Subclass Lecturer
class Lecturer extends University {
  String lecturerID;
  String department;

  Lecturer(String name, String location, this.lecturerID, this.department)
      : super(name, location);

  @override
  void displayInfo() {
    print("Lecturer at $name, Department: $department, ID: $lecturerID");
  }

  void teach() {
    print("Lecturer $lecturerID is teaching.");
  }
}

// Subclass Staff
class Staff extends University {
  String staffID;
  String role;

  Staff(String name, String location, this.staffID, this.role)
      : super(name, location);

  @override
  void displayInfo() {
    print("Staff at $name, Role: $role, ID: $staffID");
  }

  void manageTasks() {
    print("Staff $staffID is managing tasks.");
  }
}
