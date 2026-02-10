/*
========================================
TOPIC NAME:
Type System & Sound Null Safety
========================================

DEFINITION:
----------------------------------------
Dart has a strong type system which means
every variable has a specific type.
Sound null safety ensures that a variable
cannot have a null value unless it is
explicitly allowed.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Type system ka matlab hai ke har cheez ka
type clear hota hai, jaise int, String, bool.

Null safety yeh ensure karti hai ke program
crash na ho null ki wajah se.
Agar variable null ho sakta hai, to humein
pehle hi batana parta hai.

Real life example:
Jaise phone number agar required ho,
to woh null nahi ho sakta.
Lekin middle name optional hota hai,
is liye woh null ho sakta hai.

SYNTAX:
----------------------------------------
int age = 20;
String name = "Ali";
String? middleName;
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  int age = 22;
  String name = "Ali";

  // Nullable variable
  String? middleName;

  print(age);
  print(name);
  print(middleName);
}

/*
OUTPUT:
----------------------------------------
22
Ali
null
========================================
*/
