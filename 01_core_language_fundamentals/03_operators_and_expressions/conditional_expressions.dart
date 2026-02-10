/*
========================================
TOPIC NAME:
Conditional Expressions in Dart
========================================

DEFINITION:
----------------------------------------
Conditional expressions (ternary operator `? :`)
allow you to choose between two values based on a condition.
It is an inline if-else statement.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Agar condition true ho to pehla value use hoga,
warna doosra value use hoga.

Real life example:
- Agar score 60 se zyada ho to "Pass" warna "Fail"
- Agar shopping cart ka total 100 se zyada ho to shipping free
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Basic conditional expression
  int score = 75;
  String grade = score >= 60 ? "Pass" : "Fail";
  print("Score: $score, Grade: $grade");

  // 2️⃣ Conditional expression with numbers
  int a = 10;
  int b = 20;
  int max = a > b ? a : b; // returns the greater number
  print("Max of $a and $b is $max");

  // 3️⃣ Conditional expression with real-life example: shipping cost
  double orderAmount = 120;
  double shippingCost = orderAmount > 100 ? 0 : 10;
  print("Order amount: \$${orderAmount}, Shipping cost: \$${shippingCost}");

  // 4️⃣ Nested conditional expression
  int marks = 85;
  String result = marks >= 90
      ? "A+"
      : marks >= 75
      ? "A"
      : marks >= 60
      ? "B"
      : "Fail";
  print("Marks: $marks, Grade: $result");
}

/*
OUTPUT:
----------------------------------------
Score: 75, Grade: Pass
Max of 10 and 20 is 20
Order amount: $120.0, Shipping cost: $0.0
Marks: 85, Grade: A
========================================
*/
