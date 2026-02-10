/*
========================================
TOPIC NAME:
Cascade Operator in Dart
========================================

DEFINITION:
----------------------------------------
The cascade operator (`..`) allows you to perform
**multiple operations on the same object** without
repeating the object name.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
Ek object par ek se zyada actions ek saath perform karna
bina object ko bar bar likhe.
jasy k ek hi button par click krny sy multiple lights on ho jana.

Real life example:
- Car object banai aur uske properties set karo
- Phir ek hi statement me display karo
*/

// ================================
// PROGRAM CODE
// ================================

class Car {
  String? brand;
  String? color;
  int? year;

  void display() {
    print("Brand: $brand, Color: $color, Year: $year");
  }
}

void main() {
  // 1️⃣ Using cascade operator to set multiple properties
  var car = Car()
    ..brand = "Toyota"
    ..color = "Red"
    ..year = 2022
    ..display();

  // 2️⃣ Another example with list
  List<int> numbers = []
    ..add(1)
    ..add(2)
    ..add(3)
    ..remove(2);

  print("Numbers list: $numbers");
}

/*
OUTPUT:
----------------------------------------
Brand: Toyota, Color: Red, Year: 2022
Numbers list: [1, 3]
========================================
*/
