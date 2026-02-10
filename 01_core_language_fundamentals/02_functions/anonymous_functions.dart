/*
========================================
TOPIC NAME:
Anonymous Functions in Dart
========================================

DEFINITION:
----------------------------------------
Anonymous functions are functions without a name.
They are usually used as arguments to other functions
or for short, one-time operations.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Anonymous function wo function hai jiska koi naam nahi hota.
Hum ise mostly list operations ya callbacks mein use karte hain.

Real life example:
- List ke har element par action perform karna
- Button click par function run karna
- Temporary calculation
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Basic anonymous function
  var greet = (String name) {
    print("Hello, $name!");
  };

  greet("Ali"); // call the anonymous function
  greet("Sara");

  // 2️⃣ Anonymous function as argument
  List<int> numbers = [1, 2, 3, 4, 5];

  // Using forEach with anonymous function
  numbers.forEach((number) {
    print("Number squared: ${number * number}");
  });

  // 3️⃣ Arrow syntax for single expression
  numbers.forEach((n) => print("Double: ${n * 2}"));

  // 4️⃣ Anonymous function returning value
  var multiply = (int a, int b) => a * b;
  print("3 * 4 = ${multiply(3, 4)}");
}

/*
OUTPUT:
----------------------------------------
Hello, Ali!
Hello, Sara!
Number squared: 1
Number squared: 4
Number squared: 9
Number squared: 16
Number squared: 25
Double: 2
Double: 4
Double: 6
Double: 8
Double: 10
3 * 4 = 12
========================================
*/
