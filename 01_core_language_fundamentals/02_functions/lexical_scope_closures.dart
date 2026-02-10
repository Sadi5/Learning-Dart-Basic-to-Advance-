/*
========================================
TOPIC NAME:
Lexical Scope and Closures in Dart
========================================

DEFINITION:
----------------------------------------
1️⃣ Lexical Scope: The region in code where
   a variable is defined and can be accessed.

2️⃣ Closure: A function that **remembers variables**
   from its surrounding lexical scope even after
   that scope has finished execution.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
1️⃣ Lexical scope:
   Jo variable function ke andar define hota hai,
   wo sirf usi function ke andar access hota hai.

2️⃣ Closure:
   Function jo apne surrounding ke variables ko yaad
   rakhta hai aur future mein bhi use kar sakta hai.

Real life example:
- Counter function jo last value yaad rakhta hai
- Function factory jo custom multipliers return kare
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Lexical scope example
  int globalVar = 10;

  void outer() {
    int outerVar = 20;

    void inner() {
      int innerVar = 30;
      print("Global: $globalVar, Outer: $outerVar, Inner: $innerVar");
    }

    inner();
    // print(innerVar); // ❌ Error: innerVar not accessible here
  }

  outer();

  // 2️⃣ Closure example
  Function makeCounter() {
    int count = 0; // variable remembered by closure

    return () {
      count++;
      print("Count: $count");
    };
  }

  var counter = makeCounter();

  counter(); // Count: 1
  counter(); // Count: 2
  counter(); // Count: 3

  // Another counter instance
  var counter2 = makeCounter();
  counter2(); // Count: 1
}

/*
OUTPUT:
----------------------------------------
Global: 10, Outer: 20, Inner: 30
Count: 1
Count: 2
Count: 3
Count: 1
========================================
*/
