/* 
========================================
TOPIC NAME:
Advanced Dart Operators & Collection Features (With Real-Life Examples)
========================================

DEFINITION (Simple English):
----------------------------------------
This file demonstrates key Dart features with **real-life scenarios**:
1. Cascade (`..`) →         configure objects/widgets efficiently
2. Spread (`...`, `...?`) → merge collections safely
3. Collection if & for →    build lists conditionally or dynamically
4. Null-aware operators (`?.`, `??`, `??=`, `...?`) → handle null safely
5. Type test operators (`is`, `is!`, `as`) →          check & cast types from API/data
6. Conditional expressions (`? :`) → inline if-else decisions
*/

// ================================
// PROGRAM CODE
// ================================

// 1️⃣ Cascade operator (Real-life: configuring a UI object or a user profile)
class UserProfile {
  String? name;
  int? age;
  String? city;

  void display() => print("Name: $name, Age: $age, City: $city");
}

void main() {
  var user = UserProfile()
    ..name = "Ali"
    ..age = 25
    ..city = "Karachi"
    ..display();

  // 2️⃣ Spread operator (Real-life: merging shopping carts)
  List<String> cartMorning = ["Apple", "Banana"];
  List<String> cartEvening = ["Orange", "Grapes"];
  List<String> mergedCart = [...cartMorning, ...cartEvening, "Mango"];
  print("Merged cart: $mergedCart");

  // Null-aware spread (cart may not exist)
  List<String>? cartLateNight; // null
  List<String> finalCart = ["Pineapple", ...?cartLateNight, "Watermelon"];
  print("Final cart with null-aware spread: $finalCart");

  // 3️⃣ Collection if & for (Real-life: dynamic menu or task list)
  bool isAdmin = true;
  List<String> menu = [
    "Home",
    "Profile",
    if (isAdmin) "Admin Panel", // only added for admin
    for (var item in ["Settings", "Help"]) item, // loop to add items
  ];
  print("Menu items: $menu");

  // 4️⃣ Null-aware operators (Real-life: handling optional user input)
  String? username; // user may not have entered a name yet
  print(username?.length ?? "Username is null"); // safe access
  username ??= "Guest"; // assign default if null
  print("Username after ??= : $username");

  // 5️⃣ Type test operators (Real-life: processing API response or form data)
  dynamic apiData = "Hello from API";
  if (apiData is String) {
    print("API data is a String: ${apiData.toUpperCase()}");
  }
  if (apiData is! int) {
    print("API data is not an integer");
  }

  Object obj = "DartLang";
  String casted = obj as String; // type cast
  print("Casted value: $casted");

  // 6️⃣ Conditional expressions (Real-life: grading system, discounts, or pricing)
  int score = 75;
  String grade = score >= 60 ? "Pass" : "Fail";
  print("Score: $score, Grade: $grade");

  // Another real-life example: shipping cost
  double orderAmount = 120;
  double shippingCost = orderAmount > 100 ? 0 : 10;
  print("Order amount: \$${orderAmount}, Shipping cost: \$${shippingCost}");
}

/*
OUTPUT:
----------------------------------------
Name: Ali, Age: 25, City: Karachi
Merged cart: [Apple, Banana, Orange, Grapes, Mango]
Final cart with null-aware spread: [Pineapple, Watermelon]
Menu items: [Home, Profile, Admin Panel, Settings, Help]
Username is null
Username after ??= : Guest
API data is a String: HELLO FROM API
API data is not an integer
Casted value: DartLang
Score: 75, Grade: Pass
Order amount: $120.0, Shipping cost: $0.0
========================================
*/
