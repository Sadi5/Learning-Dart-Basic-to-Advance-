/*
========================================
TOPIC NAME:
While and Do-While Loops in Dart
========================================

DEFINITION (Simple English):
----------------------------------------
- `while` → repeatedly executes a block **as long as a condition is true**.  
- `do-while` → executes the block **at least once**, then repeats while the condition is true.  

CONCEPT + REAL LIFE EXAMPLE (Roman Urdu):
----------------------------------------
1️⃣ while → jab tak condition true hai tab tak kaam karo  
2️⃣ do-while → kam se kam ek dafa execute karo aur phir check karo

Real life example:
- while → supermarket me item check karte jao jab tak stock mil raha hai
- do-while → minimum ek item scan karo phir next item tak loop chale
*/

// ================================
// PROGRAM CODE
// ================================

void main() {
  // 1️⃣ while loop example
  print("While loop example:");
  int count = 1;
  while (count <= 5) {
    print("Count: $count");
    count++; // increment to eventually stop the loop
  }

  // 2️⃣ do-while loop example
  print("\nDo-while loop example:");
  int number = 1;
  do {
    print("Number: $number");
    number++;
  } while (number <= 5);

  // 3️⃣ Real-life example: waiting for a process
  print("\nReal-life example: waiting for process");
  bool isProcessComplete = false;
  int attempt = 1;
  do {
    print("Checking process attempt: $attempt");
    attempt++;
    if (attempt > 3) {
      isProcessComplete = true; // simulate process completion
    }
  } while (!isProcessComplete);
  print("Process completed after $attempt attempts");
}

/*
OUTPUT:
----------------------------------------
While loop example:
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5

Do-while loop example:
Number: 1
Number: 2
Number: 3
Number: 4
Number: 5

Real-life example: waiting for process
Checking process attempt: 1
Checking process attempt: 2
Checking process attempt: 3
Checking process attempt: 4
Process completed after 5 attempts
========================================
*/
