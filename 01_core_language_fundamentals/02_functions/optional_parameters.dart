/*
========================================
TOPIC NAME:
Optional Parameters
========================================

DEFINITION:
----------------------------------------
Optional parameters are parameters that
are not required when calling a function.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Optional cheez zaroori nahi hoti.
Agar value na do, function phir bhi chale.

Real life example:
Middle name optional hota hai.

SYNTAX:
----------------------------------------
void fun([int? a])
*/

// ================================
// PROGRAM CODE
// ================================

void printName(String name, [String? title]) {
  print(title != null ? "$title $name" : name);
}

void main() {
  printName("Ali");
  printName("Ali", "Mr.");
}

/*
OUTPUT:
----------------------------------------
Ali
Mr. Ali
========================================
*/
