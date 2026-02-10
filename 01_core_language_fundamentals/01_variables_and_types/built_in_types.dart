/*
========================================
TOPIC NAME:
Built-in Data Types
========================================

DEFINITION:
----------------------------------------
Built-in data types are basic types
provided by Dart to store different kinds
of values like numbers, text, and collections.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Data types batate hain ke variable ke andar
kis type ka data store hoga.

Real life example:
Age = number (int)
Price = decimal number (double)
Name = text (String)
Login status = true/false (bool)
Shopping list = List

SYNTAX:
----------------------------------------
int age = 20;
double price = 10.5;
String name = "Ali";
bool isLogin = true;
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  int age = 25;
  double price = 199.99;
  String name = "Sadia";
  bool isStudent = true;

  List<String> subjects = ["Math", "CS"];
  Set<int> rollNumbers = {1, 2, 3};
  Map<String, int> marks = {"Math": 90};

  print(age);
  print(price);
  print(name);
  print(isStudent);
  print(subjects);
  print(rollNumbers);
  print(marks);
}

/*
OUTPUT:
----------------------------------------
25
199.99
Sadia
true
[Math, CS]
{1, 2, 3}
{Math: 90}
========================================
*/
