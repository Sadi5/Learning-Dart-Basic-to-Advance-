/*
========================================
TOPIC NAME:
Spread Operator in Dart
========================================

DEFINITION:
----------------------------------------
The spread operator (`...`) allows you to **merge lists** or **add elements from one collection to another**.
The null-aware spread operator (`...?`) does the same but **ignores null lists**.

CONCEPT + REAL LIFE EXAMPLE:
----------------------------------------
1️⃣ `...` → Ek list ke elements ko doosri list me add karna
2️⃣ `...?` → Agar list null ho to ignore kar do

Real life example:
- Merging multiple shopping carts
- Combining friends lists
- Adding optional items to a menu
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Basic spread operator
  List<int> morningCart = [1, 2, 3];
  List<int> eveningCart = [4, 5, 6];
  List<int> fullCart = [...morningCart, ...eveningCart];
  print("Merged cart: $fullCart"); // [1,2,3,4,5,6]

  // 2️⃣ Null-aware spread operator
  List<int>? lateNightCart; // null
  List<int> finalCart = [0, ...?morningCart, ...?lateNightCart, 7];
  print("Final cart with null-aware spread: $finalCart"); // [0,1,2,3,7]

  // 3️⃣ Real-life example: merging friends lists
  List<String> friendsA = ["Ali", "Sara"];
  List<String>? friendsB; // may be null
  List<String> allFriends = ["Zara", ...friendsA, ...?friendsB, "Ahmed"];
  print("All friends: $allFriends");

  // 4️⃣ Adding optional items to a menu
  List<String> menuMain = ["Home", "Profile"];
  List<String>? menuExtra; // admin menu may be null
  List<String> finalMenu = [...menuMain, ...?menuExtra, "Help"];
  print("Final menu: $finalMenu");
}

/*
OUTPUT:
----------------------------------------
Merged cart: [1, 2, 3, 4, 5, 6]
Final cart with null-aware spread: [0, 1, 2, 3, 7]
All friends: [Zara, Ali, Sara, Ahmed]
Final menu: [Home, Profile, Help]
========================================
*/
