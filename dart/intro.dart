
//------------intro-------------------
// void main() {
//   print('Hello, World!');
// }


//--------------------variables--------------------------------
// void main() {
//   // Declaring variables
//   int age = 20;
//   double pi = 3.14;
//   String name = 'Flutter Dev';
//   bool isLearning = true;

//   print('Name: $name, Age: $age, Learning Flutter: $isLearning');
// }

//--------------------Conditional Statements------------------

// void main() {
//   int age = 18;

//   if (age >= 18) {
//     print('You are eligible to vote.');
//   } else {
//     print('You are not eligible to vote.');
//   }
// }


//--------------------Loops--------------------------------

// void main() {
//   // For loop
//   for (int i = 1; i <= 5; i++) {
//     print('Number: $i');
//   }

//   // While loop
//   int count = 0;
//   while (count < 3) {
//     print('Count: $count');
//     count++;
//   }
// }


//-----------------------Null Safety-------------------

// void main() {
//   String? name;
//   print(name); // Prints: null

//   name = 'Flutter';
//   print(name); // Prints: Flutter
// }


//------------Dart Async Programming (Future and Async/Await)-------------

// Future<String> fetchData() async {
//   await Future.delayed(Duration(seconds: 2)); // Simulate delay
//   return 'Data loaded!';
// }

// void main() async {
//   print('Fetching data...');
//   String data = await fetchData();
//   print(data);
// }
