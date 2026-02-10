/*
========================================
TOPIC NAME:
Type Test Operators in Dart
========================================

DEFINITION (Simple English):
----------------------------------------
Type test operators help you **check the type of a variable** at runtime and **safely cast objects**.

Operators:
- `is` → checks if object is of a certain type (returns true/false)
- `is!` → checks if object is NOT of a certain type
- `as` → casts an object to a specified type

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
1️⃣ is → check karo kya variable expected type ka hai
2️⃣ is! → check karo kya variable expected type ka nahi hai
3️⃣ as → object ko type me convert karo

Real life example:
- API se aaya data check karna
- Form input type check karna
- Object ko specific class type me cast karna
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Using `is` operator
  dynamic data = "Hello from API";
  if (data is String) {
    print("Data is a String: ${data.toUpperCase()}");
  }

  // 2️⃣ Using `is!` operator
  if (data is! int) {
    print("Data is not an integer");
  }

  // 3️⃣ Using `as` operator
  Object obj = "DartLang";
  String casted = obj as String; // cast Object to String
  print("Casted value: $casted");

  // 4️⃣ Real-life example: checking API response type
  dynamic apiResponse = {"name": "Ali"};
  if (apiResponse is Map<String, String>) {
    print("API response has keys: ${apiResponse.keys}");
  }

  // 5️⃣ Real-life example: safely cast a dynamic object
  dynamic unknownObj = "Flutter";
  String knownObj = unknownObj as String;
  print("Safely casted object: $knownObj");
}

/*
OUTPUT:
----------------------------------------
Data is a String: HELLO FROM API
Data is not an integer
Casted value: DartLang
API response has keys: (name)
Safely casted object: Flutter
========================================
*/
