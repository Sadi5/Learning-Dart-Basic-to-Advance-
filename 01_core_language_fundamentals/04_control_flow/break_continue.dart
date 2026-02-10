/*
========================================
TOPIC NAME:
Break and Continue in Dart
========================================

DEFINITION (Simple English):
----------------------------------------
- `break` → exits the **current loop immediately**.
- `continue` → skips the **rest of the current loop iteration** and moves to the next iteration.

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
1️⃣ break → loop ko turant stop kar do jab condition mil jaye
2️⃣ continue → current step skip karo aur next step pe chalo

Real life example:
- break → supermarket me pehla available product milte hi search stop karna
- continue → supermarket me expired items skip kar ke baaki items check karna
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ Using break
  print("Example of break:");
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      print("Found 5, breaking loop!");
      break; // exit loop immediately
    }
    print("i = $i");
  }

  // 2️⃣ Using continue
  print("\nExample of continue:");
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      print("Skipping even number: $i");
      continue; // skip even numbers
    }
    print("Odd number: $i");
  }

  // 3️⃣ Nested loop example with break
  print("\nNested loop with break:");
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (j == 2) {
        print("Breaking inner loop when j = 2");
        break;
      }
      print("i = $i, j = $j");
    }
  }

  // 4️⃣ Nested loop example with continue
  print("\nNested loop with continue:");
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      if (j == 2) {
        print("Skipping inner loop iteration when j = 2");
        continue;
      }
      print("i = $i, j = $j");
    }
  }
}

/*
OUTPUT:
----------------------------------------
Example of break:
i = 1
i = 2
i = 3
i = 4
Found 5, breaking loop!

Example of continue:
Odd number: 1
Skipping even number: 2
Odd number: 3
Skipping even number: 4
Odd number: 5
Skipping even number: 6
Odd number: 7
Skipping even number: 8
Odd number: 9
Skipping even number: 10

Nested loop with break:
i = 1, j = 1
Breaking inner loop when j = 2
i = 2, j = 1
Breaking inner loop when j = 2
i = 3, j = 1
Breaking inner loop when j = 2

Nested loop with continue:
i = 1, j = 1
Skipping inner loop iteration when j = 2
i = 1, j = 3
i = 2, j = 1
Skipping inner loop iteration when j = 2
i = 2, j = 3
i = 3, j = 1
Skipping inner loop iteration when j = 2
i = 3, j = 3
========================================
*/
