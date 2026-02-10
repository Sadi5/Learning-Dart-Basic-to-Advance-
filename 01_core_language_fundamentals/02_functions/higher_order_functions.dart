/*
========================================
TOPIC NAME:
Higher-Order Functions in Dart
========================================

DEFINITION:
----------------------------------------
A higher-order function is a function that
can take other functions as parameters, or
return a function as a result.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
Higher-order function wo function hai jo:
1️⃣ Dusre function ko parameter ke taur pe le sakta hai
2️⃣ Function ko return kar sakta hai

Real life example:
- List ke elements par action apply karna
- Function factory jo custom functions return kare
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Function taking another function as parameter
  void repeat(int times, void Function(int) action) {
    for (int i = 0; i < times; i++) {
      action(i);
    }
  }

  repeat(3, (i) => print("Hello #$i"));

  // 2️⃣ Function returning another function
  Function multiplyBy(int n) {
    return (int x) => x * n;
  }

  var multiplyBy2 = multiplyBy(2);
  var multiplyBy5 = multiplyBy(5);

  print("3 * 2 = ${multiplyBy2(3)}");
  print("4 * 5 = ${multiplyBy5(4)}");

  // 3️⃣ Using higher-order functions with list
  List<int> numbers = [1, 2, 3, 4, 5];

  var squares = numbers.map((n) => n * n);
  print("Squares: $squares"); // Iterable
  print("Squares as list: ${squares.toList()}");
}

/*
OUTPUT:
----------------------------------------
Hello #0
Hello #1
Hello #2
3 * 2 = 6
4 * 5 = 20
Squares: (1, 4, 9, 16, 25)
Squares as list: [1, 4, 9, 16, 25]
========================================
*/
