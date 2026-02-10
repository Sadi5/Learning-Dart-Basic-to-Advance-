/*
========================================
TOPIC NAME:
Switch-Case Statements in Dart
========================================

DEFINITION (Simple English):
----------------------------------------
A `switch` statement allows you to **perform different actions based on the value of a variable**.
Each possible value is handled by a `case`, and `default` handles all other cases.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
- Agar variable ka value kuch hai, to specific action karo
- Agar value kisi bhi case se match nahi hoti, default action execute karo

Real life example:
- Day of the week → print day name
- User role → give access
- Grade → assign remarks
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Basic switch-case
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
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    default:
      print("Weekend");
  }

  // 2️⃣ Multiple values in same case (using fall-through with empty case)
  String role = "moderator";
  switch (role) {
    case "admin":
      print("Access to admin panel");
      break;
    case "moderator":
    case "editor":
      print("Access to edit content");
      break;
    case "user":
      print("Access to view content");
      break;
    default:
      print("No access");
  }

  // 3️⃣ Real-life example: grading system
  int score = 85;
  switch (score ~/ 10) {
    // integer division to get tens digit
    case 10:
    case 9:
      print("Grade: A+");
      break;
    case 8:
      print("Grade: A");
      break;
    case 7:
      print("Grade: B");
      break;
    case 6:
      print("Grade: C");
      break;
    default:
      print("Fail");
  }
}

/*
OUTPUT:
----------------------------------------
Wednesday
Access to edit content
Grade: A
========================================
*/
