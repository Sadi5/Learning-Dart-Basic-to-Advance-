/*
========================================
TOPIC NAME:
Null-Aware Operators in Dart
========================================
*/

class UserProfile {
  String? city;
}

void main() {
  // 1️⃣ ?. (Null-aware access)
  String? username;
  print("Username length: ${username?.length}");

  // 2️⃣ ?? (Default value if null)
  String displayName = username ?? "Guest";
  print("Display name: $displayName");

  // 3️⃣ ??= (Assign if null)
  username ??= "Ali";
  print("Username after ??=: $username");

  // 4️⃣ ...? (Null-aware spread in collections)
  List<String>? morningCart = ["Apple", "Banana"];
  List<String>? eveningCart; // null
  List<String> finalCart = ["Orange", ...?morningCart, ...?eveningCart];
  print("Final cart with null-aware spread: $finalCart");

  // 5️⃣ Real-life example: accessing optional object
  UserProfile? user;
  print("User city: ${user?.city ?? "Not provided"}");
}

/*
OUTPUT:
----------------------------------------
Username length: null
Display name: Guest
Username after ??=: Ali
Final cart with null-aware spread: [Orange, Apple, Banana]
User city: Not provided
========================================
*/
