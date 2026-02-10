/*
========================================
TOPIC NAME:
dynamic vs Object
========================================

DEFINITION:
----------------------------------------
dynamic allows changing the type at runtime,
while Object is the base class of all types
and is more strict.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
dynamic variable ka type change ho sakta hai.
Object variable sab kuch hold kar sakta hai,
lekin methods call karne se pehle cast karna
parta hai.

Real life example:
dynamic = all-rounder worker
Object = manager jo sirf rules follow karta hai

SYNTAX:
----------------------------------------
dynamic x = 10;
Object y = "Hello";
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  dynamic value = 10;
  value = "Hello";

  Object data = "Dart";

  print(value);
  print(data);
}

/*
OUTPUT:
----------------------------------------
Hello
Dart
========================================
*/
