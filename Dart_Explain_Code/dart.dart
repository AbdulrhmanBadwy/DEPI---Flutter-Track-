// Session 01
/**
 * 
// void main() {
//   // Variables

//   // var a = 5;
//   // var b = 10;
//   // var x = a + b;

//   // print(x);

//   // var name = 'AbdulrhmanBadwy';

//   // print('Hi , $name');

//   // Data Types
//   /**
//    * Integers -> 1,2,3,4...
//    * Double -> 1.1 , 2.2 ...
//    * String -> text -> '' , " "
//    * Boolean -> True , False
//    *
//    */
//   // String date = '7/2005';

//   // int Number = 5;
//   // double Float = 10.8;
//   // bool isTrue = true;

//   // print(Number);

//   // print(date[0]);

//   // Null safety
//   /**
//    * String name  -> Non-Nullable String : should iput a value
//    * String? name -? Nullable String
//    */
//   // String name; // Nullable String
//   // String? LastName;

//   // // Compile Time Error

//   // // print(name);
//   // print(LastName);

//   // if (LastName == null) {
//   //   LastName = 'Badwy';
//   // }

//   String? LastName;

//   // Ternary if
//   // LastName = LastName == null? 'Badwy' : LastName ;

//   // if Null
//   // final name = LastName ?? 'Badwy';

//   // Assign + if Null
//   // LastName ??= 'Badwy';
//   // print(LastName);

//   // Not Null =  علي ضمانتي انها مش  null
//   // final FullName = "Youssef" + (LastName ??= 'UnKnown');
//   // print(FullName);

//   var x = 5; // save data type not value القيمه هتتغير بس النوع لأ
//   /**
//    * x = int
//    * x = 80 // Still interger
//    * x ="Kareem" Error Not Integer
//    */
//   dynamic y = 5; // No Data Type, No Value
//   // y = 5;
//   // y = 'Badwy';
//   // y = true;
//   // y =10.6 ;
//   /**
//    * بتحل مشكله في استقبال البيانات انت مش عاارف الداتا اللي جايه دي ايه
//    *
//    */
//   // We Don't Use Dyanmic Anywhere.

//   var i;
//   i = 5;
//   i = null;

//   print((i ?? 0 ) + 5);

//   print(y.runtimeType);
//   print(x.runtimeType);
// }

// void main(){

// // Constants

// // final -> run-time & can't Change
// //  ممكن التطبيق يشتغل عاادي وهو مستني قيمه بس بمجرد لماياخد القيمه بتاعته مش ممكن تتغير

// // const -> =  compile-time
// // هنا بقي البرنامج مش ممكن يشتغل غير لما تديها قيمه في الأول ولو اديتها قيمه مش بتتغير

// }

void main() {
  // // Conditions (Switch)

  // final year = 2000;

  // // Store Expertion in Variable
  // // Pattern Matching
  // final String generation = switch (year) {
  //   >=2000 && <2010 => 'Gen Z ',
  //   < 2000 && > 1980 => 'Gen M ',
  //   < 1980 => 'Gen X ',

  //   _ => 'UnKnown', // Default Value
  // };

  // print(generation);

  // // final int x = 5;

  // // switch (x) {
  // //   case 5:
  // //     print('Hello,Word');
  // //   case 10:
  // //     print('Hello, 10 ');
  // //   default:
  // //     print('Hello, Default');
  // // }

  // LOOPs

  // For Loop
  // While Loop
  // Do While Loop

  // for (int i = 0; i < 10; i++) {
  //   print('$i. Badwy');
  // }

  // int x = 0;
  // while (x < 10) {
  //   print('x');
  //   x++;
  // }

  // do {
  //   print(x);
  //   x++;
  // } while (x < 10);

  // Lists
  // اغلب  مشاكلها في الرن تايم مش ال compile time 

  // Final  في ال  List  بتحافظ علي نفسها مش علي القيم اللي جواها 

  // final List names = ['Badwy', 'Youssef', 'Badwy', 'ahmed', 'mohamed'];
  // const List names1 = ['Badwy', 'Youssef', 'Badwy', 'ahmed', 'mohamed'];

  // names.add('almeshmasre');
  // names.add("Badyw");
  // names.add(1);

  // print(names);


  // for (int i = 0; i < names.length; i++) {
  //   print(names[i]);
  // }

  // for (final  i in names) {
  //   print(i);
  // }

  // print(names.runtimeType); // Lists of Dynamic
}
 */

// Session 02
/**
 * 
 * 
void main() {
  // for (var i = 0; i < 5; i++) {
  //   if (i == 2) continue;
  //   print(i);
  // } // Output : 0 1 3 4

  final List<String> names = ['Badwyy', 'Omar'];

  names.clear();

  names.add('AlAlamy');

  names.addAll(['Menna', 'Asmaa', 'Badwy', 'Omar']); // Take List

  // names.remove('Badwy'); // Take Value of Element  ;

  // names.removeAt(0); // Take index of Element

  // print(names[0]); // print(names.first)
  // print(names[names.length - 1]); // print(names.last)

  // print(names.reversed); // Reverse Items

  // print(names.isEmpty); // if Empyt no contain any value
  // print(names.isNotEmpty); // contain values

  // Clean Code
  // In Conditions -> start with true ; ---> start with isEmpty not IsNotEmpty
  // you Write code for others Programmers not for computer
  // Code read more than write --> Be Care about that

  // names.forEach((element) {
  //   print(element);
  // });

  // final myList = names.where((element) {
  //   return element.length > 5;
  // }).toList();
  // print(myList);

  // // Mapping

  // final newList = names.map((element) {
  //   return element.length;
  // });

  // final ListString = names.map((element) {
  //   return 'Name is: $element';
  // });

  // print(ListString);

  // print(newList);

  // final priceList = [10000, 2000, 50000, 900000];

  // final FiltiredPriceList = priceList.where((e) {
  //   return e >= 10000 && e < 9000;
  // }).toList();

  // final namesList = ['Mohammed Mohammed', 'Ahmed Badwy' , 'Ahmed Omar'];

  // final fisrtWherelist = namesList.firstWhere((e){
  //   return e.contains('Ahmed');
  // });

  // print(fisrtWherelist);

  // Sets

  // final Set<String> weekdays = {
  //   'Sunday',
  //   'Monday',
  //   'Tuesday',
  //   'Wendesday',
  // };

  // Maps || Hash Map || Dictionary
  //Map == Ojbect
  //

  // Complex Data Like-> any thing in any software

  //Social Media
  final mohammed = {
    'name': 'Mohammed',
    'age': 21,
    'address': 'Giza',
    'family': [
      {
        'Relation': 'Dad',
        'name': 'omar',
        'age': 50,
        'address': 'Giza',
        'Friends': [
          {}, // Friend 1
          {}, // Friend 2
          {}, // Friend  3
          {}, // Friend 4
        ],
      }, // Dad
      {'Relation': 'Mom', 'name': 'sara', 'age': 40}, // Mom
      {'Relation': 'Brother', 'name': 'Omar', 'age': 40}, // Brother
    ],
  };


}
 */

// Session 03
/** 
// void main() {
//   // Clean code principles of Function
//   // Functions = Block of code
//   // Functions = Code Reusable
//   // ( Functions = Do one Job )

//   calculate();
//   final Message = sayHBD('Badwy', 'AlMeshMasre');

//   // Two way to print Message
//   print(Message);
//   print(sayHBD('Omar', 'Badwy'));

//   sayHBD3(Name: 'Masre', LastName: 'BadwyAlMeshMasre');
// }

// // Function Anatomy:
// // 1.name - clear , defined
// // 2.parm - make function variable , can interactive with you depen on data
// // 3.body
// // 4.return type by default void --> doesn't return any data type

// int calculate() {
//   return 1 + 2;
// }

// // function with return type
// // Required Positional
// String sayHBD(String Name, String LastName) {
//   return 'Happy Birthday! $Name $LastName';
// }

// // Optional Positional
// String sayHBD2(String Name, [String? LastName]) {
//   return 'Happy Birthday! $Name $LastName';
// }

// String sayHBD3({String? Name, String? LastName = ''}) {
//   return 'Happy Birthday! $Name $LastName';
// }

// String? PrintMessage() {
//   return null;
// }

// Parameters Type ( )
// 1.Required Positional --> Enter data and With order
// 2.Optional Positional [ ? ]
// 3.Optional Named { ?  }
// 4.Rquired Named { required }

// Call Back
//  بتنفذ فانكشن جوا فانكشن
//  بتطلع الفاليو بره

// void PrintInformation({
//   required String name,
//   required String lName,
//   required Function CallBack,
// }) {
//   print('My name is $name , my last name is $lName');
//   CallBack('Youessef');
// }

// void power(int number, Function(int) pow) {
//   pow(number *  );
// }

// // Typedef 
// // is A Variable of the Expression like alias 

// void main() {
//   PrintInformation(
//     name: 'badwy',
//     lName: 'almasre',
//     CallBack: (String name) {
//       // Anonymous Function
//       print('Callback $name');
//     },
//   );

//   power(10, (number) {
//     print(number);
//   });

//   int calc2(int x, int y) => x+y; // One Expression  
// }


// OOP

*/

// Session 05
/**
/**
 * OPP
 * Object
 * Encapsulation
 * Abstraction
 * Ploy
 * Inheritance
 */
// void main() {
//   Human h = Human();
// }

// class Human {
//   Human(); // Default Constructor

//   // Constructor

//   // Named Constructor
//   Human.man();
//   Human.woman();

//   // Encapsulation -> Access Modifiers (Private , Public )
//   // Setters// Getters with Conditions

//   // set Number(int x) {}

//   // get Number => 5;

//   // Inheritance (Parent (Super) , child(Sub-class))

// }

// abstract class PlaneControlSystem {
//   void boost();
//   void accelerate();
//   void fly();
// }

// // Simulation
// class SimulationFlight implements PlaneControlSystem {
//   @override
//   void accelerate() {}

//   @override
//   void boost() {}

//   @override
//   void fly() {
//     print('SimulationFly');
//   }
// }

// class RealFlight implements PlaneControlSystem {
//   @override
//   void accelerate() {}

//   @override
//   void boost() {}

//   @override
//   void fly() {
//     print('RealFly');
//   }
// }

// void startEngine(PlaneControlSystem System) {
//   System.fly();
// }

// void main() {
//   RealFlight realFlight = RealFlight();
//   SimulationFlight simulationFlight = SimulationFlight();

//   startEngine(realFlight);
// }

// class Human {
//   final String name;

//   Human(this.name);

// }

// void main(){

// }

// Mixins
// --> Way to support Multiple Inheritance

// class Human {

// }
// mixin Actions{
//   void fly(){}
//   void kill(){}
// }

// mixin AnimalActions{
//   void fly(){}
// }

// Enums

// enum fruits { apple, mango, bana }

// enum user {doctor , patient}

// enum Status {Loading , Succes , failed , empty , noInternet}

// enum Gender {male , female }

// void main() {
//   final fruits f = fruits.mango;

// }

// class BankAccount {
//   void deposit() {}
//   void Withdraw() {}
//   void transfer() {}
// }

// void main() {
//   final b1 = BankAccount();

//     // Cascading Function  بيتنفذو تتابوعي
//   b1..deposit()..Withdraw()..transfer();

// }

// List names = ['badwy', 'omar'];

// final newNames = ['omar', 'abdelrhman'];

//                 // Values in Each list
// List allNames = [...names, ...newNames];

// Callable object

// class kill {
//   void call(String name) {
//     print('We will kill $name');
//   }
// }

// void main() {
//   final k = kill();

//   k('Raheed');
// }

// Extensions

// class Human {
//   void fly() {}
//   void sleep() {}
// }

// extension on Human {
//   void work() {}
//   void eat() {}
// }
//         // Extension Name 
// extension StringExtensionName on  String {
//   bool get isEmail {
//     return this.contains('@');
//   }
// }

// void main() {
//   final email = 'Youessf@gmail.com';
//   print(email.isEmail); 

  
// }

// Regular Expression -> Algorithm check in Pattern

// Email - characters 
// @gmail.
//a@eu.eu -> minimum 

  
 */

// Session 06
/**
// Gnerics
// void main() {

//     // Type Annotation / Generics
//   List<int> Numbers = [1, 2, 3];
//   Numbers.add(1);
// }

// void main() {
//   Box<int> number = Box(123);
// }

// class Box <T> {
//   final T value;

//   Box(this.value);
// }

// class Pair<k, v> {
//   final k Key ;
//   final v Value ;

//   Pair(this.Key, this.Value);
// }

// Sealed Class

// sealed class Payment {}

// class Credit implements Payment {}

// class Wallet implements Payment {}

// void main() {
//   final credit = Credit();
//   final cash = Wallet();

// //  انت بتقيت مجبر انك تعمل  Cover  لكل الحالات اللي عندك
//   final Data = switch (cash) {
//     Credit() => 'Credit Payment ',
//     Wallet() => 'Cash Way',
//   };
// }

// Composition / Aggregation

// class Engine {
//   void start() => print('Engine Started');
// }

// // Composition
// // Has-a Strong Relationship
// class Car {
//   final Engine engine = Engine();
//   void play() => engine.start();
// }

// void main() {
//   final Car bmw = Car();

// }

// Aggregation

// Has-a Week Relation

// class Student {
//   final String name;

//   Student(this.name);
// }

// class School {
//   List<Student> students;

//   School(this.students);
//   void Info() {
//     print('School has ${students.length}');
//   }
// }

// void main() {
//   Student student1 = Student('Badwy');
//   Student student2 = Student('Omar');

//   School school = School([student1, student2]);
// }

// Exceptions / Assertions

// void main() {
//   calc();
// }

// double division(int x, int y) {
//   if (y == 0) {
//     throw DivisionByZeroException('Division by zero Exception');
//   }
//   if (y == 1) {
//     throw DivisionByOneException('Division by one Exception ');
//   }
//   return x / y;
// }

// void calc() {
//   try {
//     print(division(2, 1));
//     print(division(2, 0));
//     print(division(2, 2));
//   } on DivisionByOneException catch (e) {
//     print(e.message);
//   } on DivisionByZeroException catch (e) {
//     print(e);
//   } on Exception {
//     print('there is an Exception ,try again ');
//   } catch (_) {
//     print('this is an Exception , please try again later! ');
//   }

//   // Handle Exceptions
//   // try , catch ;
// }

// class DivisionByZeroException implements Exception {
//   String message;
//   DivisionByZeroException(this.message);
// }

// class DivisionByOneException implements Exception {
//   String message;
//   DivisionByOneException(this.message);
// }

// Assertion

// void main() {
//   calcPositive(0, 0); 
// }

// void calcPositive(int x, int y) {
//   // assertion

//   assert(x > 0 && y > 0, 'X and Y values should Bigger than Zero');
//   assert(x != 0 || y != 0, 'X and Y Valus should not Equal Zero');
//   print(x + y);
// }

 */

// Session 07
/**
// Async Programming

// void main() async {
//   getName().then((String value) {
//     print('My Name is $value');
//   });

//   print('Omar AlAlamy');

//   try {
//       final String name = await getName();

//       print('ALmeshmasre $name');
//   } catch (e) {
//     print(e);

//   }finally{
//     print('Hey!');
//   }
//   // Wait
// }

// // Function (Label, tage)
// Future<String> getName() async {
//   return Future.delayed(Duration(seconds: 2), () => 'Abdulrhman');
// }

// void main() async {
//   // await action1();
//   // await action2();

//   action1().then((value) {}, onError: (e) {});
//   action1().whenComplete((){});

//   final List<String> values = await Future.wait([action1(), action2()]);
//   print('Hello , World ${values[0]} ');
// }

// Future<String> action1() {
//   return Future.delayed(Duration(seconds: 2), () => 'Almeshmasre');
// }

// Future<String> action2() {
//   return Future.delayed(Duration(seconds: 2), () => 'AbdulrhmanBadwy');
// }

// Stream<int> main() async* {
//   Stream<int> stream = Stream.periodic(Duration(seconds: 1), (i) => i * i);

//   stream.listen((data) {
//     print(data);
//   }); 
// }
 */


