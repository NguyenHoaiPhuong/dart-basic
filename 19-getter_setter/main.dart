// Objectives
// 1. Default Getter and Setter
// 2. Custom Getter and Setter
// 3. Private Instance Variable

void main() {
	var student = Student();
	student.name = "Akagi";	    // Default setter
	print(student.name);	      // Default getter

	student.percentage = 438.0;   // Calling custom setter
  print(student.percentage);  // Calling custom getter
}

class Student {
	String name;		// Instance Variable

	double _percent;  // Private instance variable

	// custom setter for percentage
	void set percentage(double marksSecured) {
		_percent = (marksSecured / 500) * 100;
	}
	// custom getter for percentage
	double get percentage {
		return _percent;
	}
}