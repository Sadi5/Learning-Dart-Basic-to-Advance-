/*
========================================
TOPIC NAME:
Named vs Positional Parameters
========================================

DEFINITION:
----------------------------------------
Positional parameters depend on order,
named parameters depend on names.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
Positional mein order zaroori hota hai.
Named mein naam likh kar value dete hain.

Real life example:
Courier address likhna (named)
Phone number bolna (positional)

SYNTAX:
----------------------------------------
void fun(int a, int b)
void fun({int a, int b})
*/

// ================================
// PROGRAM CODE
// ================================

void showPositional(String name, int age) {
  print("$name is $age years old");
}

void showNamed({required String name, required int age}) {
  print("$name is $age years old");
}

void main() {
  showPositional("Ali", 22);
  showNamed(name: "Sadia", age: 21);
}

/*
OUTPUT:
----------------------------------------
Ali is 22 years old
Sadia is 21 years old
========================================
*/
