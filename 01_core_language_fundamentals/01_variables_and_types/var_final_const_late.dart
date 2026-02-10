/*
========================================
TOPIC NAME:
var, final, const, late
========================================

DEFINITION:
----------------------------------------
var, final, const, and late are used to
declare variables with different rules
about changing values and initialization.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
var normal variable hota hai.
final aik dafa value assign hoti hai.
const bilkul fixed hota hai.
late baad mein value assign karne ke liye
use hota hai.

Real life example:
Name change ho sakta hai (var)
CNIC change nahi hota (final)
Pi value fix hoti hai (const)
Delivery time baad mein pata chalta hai (late)

SYNTAX:
----------------------------------------
var name = "Ali";
final age = 22;
const pi = 3.14;
late String address;
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  var name = "Ali";
  final age = 22;
  const pi = 3.14;

  late String address;
  address = "Lahore";

  print(name);
  print(age);
  print(pi);
  print(address);
}

/*
OUTPUT:
----------------------------------------
Ali
22
3.14
Lahore
========================================
*/
