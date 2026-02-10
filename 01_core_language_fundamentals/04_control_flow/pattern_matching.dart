/*
========================================
TOPIC NAME:
Pattern Matching in Dart
========================================

DEFINITION (Simple English):
----------------------------------------
Pattern matching lets you **match values, types, or structures** in a concise way.
It is often used with `switch` statements and `case` clauses.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
1️⃣ Switch pattern → value aur type ke basis pe decision lena
2️⃣ Advanced pattern → match complex structures like lists, maps, or classes

Real life example:
- Checking types of API responses
- Matching user roles to perform actions
- Validating shapes or structured data
*/

// ================================
// PROGRAM CODE
// ================================

// Example class for pattern matching
class User {
  String name;
  int age;

  User(this.name, this.age);
}

void main() {
  // 1️⃣ Simple switch pattern (value matching)
  int day = 3;
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    default:
      print("Other day");
  }

  // 2️⃣ Type pattern matching
  dynamic data = 42;
  switch (data) {
    case int n:
      print("Data is an integer: $n");
      break;
    case String s:
      print("Data is a string: $s");
      break;
    default:
      print("Unknown type");
  }

  // 3️⃣ Advanced pattern: matching class
  dynamic user = User("Ali", 25);
  switch (user) {
    case User(name: "Ali", age: 25):
      print("Matched specific user Ali, 25");
      break;
    case User(name: var n, age: var a) when a > 30:
      print("User $n is older than 30");
      break;
    default:
      print("Other user");
  }

  // 4️⃣ Advanced pattern: matching list
  List<int> numbers = [1, 2, 3];
  switch (numbers) {
    case [1, 2, 3]:
      print("Matched exact list [1,2,3]");
      break;
    case [var first, var second, ...]:
      print("List starts with $first, $second");
      break;
    default:
      print("Other list");
  }

  // 5️⃣ Real-life example: checking user role
  String role = "admin";
  switch (role) {
    case "admin":
      print("Access granted to admin panel");
      break;
    case "user":
      print("Access granted to user dashboard");
      break;
    default:
      print("No access");
  }
}

/*
OUTPUT:
----------------------------------------
Wednesday
Data is an integer: 42
Matched specific user Ali, 25
Matched exact list [1,2,3]
Access granted to admin panel
========================================
*/
