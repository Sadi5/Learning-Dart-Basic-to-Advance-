/*
========================================
TOPIC NAME:
Default Parameters in Dart
========================================

DEFINITION:
----------------------------------------
Default parameters are function parameters that
have a default value if the caller does not provide one.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
Agar function call karte waqt argument nahi dete,
to default value use hoti hai.

Real life example:
- Function: greet(name, greeting)
- Agar greeting nahi diya, default "Hello" use ho
*/

// ================================
// PROGRAM CODE
// ================================

void greet(String name, {String greeting = "Hello"}) {
  print("$greeting, $name!");
}

void main() {
  // 1️⃣ Using default parameter
  greet("Ali"); // Uses default "Hello"

  // 2️⃣ Overriding default value
  greet("Sara", greeting: "Hi");

  // 3️⃣ Function with multiple default parameters
  void orderPizza({String size = "Medium", String topping = "Cheese"}) {
    print("Order: $size pizza with $topping");
  }

  orderPizza(); // Medium pizza with Cheese
  orderPizza(size: "Large"); // Large pizza with Cheese
  orderPizza(topping: "Pepperoni"); // Medium pizza with Pepperoni
  orderPizza(size: "Small", topping: "Mushroom"); // Small pizza with Mushroom
}

/*
OUTPUT:
----------------------------------------
Hello, Ali!
Hi, Sara!
Order: Medium pizza with Cheese
Order: Large pizza with Cheese
Order: Medium pizza with Pepperoni
Order: Small pizza with Mushroom
========================================
*/
