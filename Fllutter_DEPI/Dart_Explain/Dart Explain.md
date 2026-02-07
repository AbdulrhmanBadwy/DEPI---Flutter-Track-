
# Dart Feature 
## No Bride in Dart (The Most Important Feature)

![[Pasted image 20251201192716.png]]
**Dart Run you code directly in Machine**


# Deals With Null (Null Safety)

![[Pasted image 20251201200951.png]]

![[Pasted image 20251201202356.png]]

![[Pasted image 20251201202536.png]]


![[Pasted image 20251201204724.png]]
# Constants 

![[Pasted image 20251201203850.png]]

![[Pasted image 20251201204047.png]]

![[Pasted image 20251201204249.png]]

![[Pasted image 20251201204508.png]]


# Conditions (Switch)


![[Pasted image 20251201211914.png]]


# Loops 

![[Pasted image 20251201212555.png]]

![[Pasted image 20251206103711.png]]

# Lists 

*list Declared and print*
![[Pasted image 20251201220014.png]]
![[Pasted image 20251201221829.png]]
 *final and const*
![[Pasted image 20251206104132.png]]
 *operation on Lists*
![[Pasted image 20251206105226.png]]
*To Important Operation *
![[Pasted image 20251206110722.png]]
*Mapping*
![[Pasted image 20251206111115.png]]

*Where*
- firstwhere
- lastwhere
- بترجع الإتراتور و لو عاوز تتعامل معها كليست  .toList()
![[Pasted image 20251206113539.png]]
*List Spread*
![[Pasted image 20251215211803.png]]

![[Pasted image 20251206112957.png]]

*Map*
 `بتحولها من نوع لنوع تاني `


`Instructions`
![[Pasted image 20251206114206.png]]
# Sets 

`the same of List and not Allowed Repeated Elements ` 

`No Repeated Elements `
![[Pasted image 20251206114334.png]]

# Maps 

![[Pasted image 20251206121005.png]]

![[Pasted image 20251206125946.png]]


# Functions 

*Function Property*
![[Pasted image 20251208194944.png]]
*Function Anatomy*
![[Pasted image 20251208200331.png]]
*Function Implementation*
![[Pasted image 20251208200349.png]]

![[Pasted image 20251208200408.png]]


*Parameters Type:*
![[Pasted image 20251208202249.png]]

![[Pasted image 20251208211145.png]]

*Call Back*
![[Pasted image 20251208211239.png]]
*Arrow Function*
![[Pasted image 20251208213831.png]]

*Typedef*
![[Pasted image 20251208213748.png]]



# OOP 

![[Screenshot[2]-01.png]]

![[Screenshot[3]-01.png]]

![[Screenshot[1]-01.png]]


*Constructors*
![[Pasted image 20251215193922.png]]

*Encapsulation*
![[Pasted image 20251215194052.png]]

*Inheritance*
![[Pasted image 20251215194141.png]]

*Abstract*
**في الأغلب ال  Abstract  مرتبط ب  Polymorphism**
![[Pasted image 20251215195203.png]]

![[Pasted image 20251215195231.png]]

![[Pasted image 20251215195256.png]]
**انت هنا خليت الفانكشن  dynamic  هتقبل منك اي سيستم انت عاوزه**
![[Pasted image 20251215195409.png]]
*Polymorphism*

![[Pasted image 20251215201731.png]]
![[Pasted image 20251215201746.png]]


*Mixins*
![[Pasted image 20251215204848.png]]

*Enum*
**special type of class**
![[Pasted image 20251215205717.png]]
*Cascading Function *
![[Pasted image 20251215211235.png]]


*Callable Object*

**لازم تسميها  call  و لازم يكون بيعمل اكشن هو الأساسي تقدر تنادي عليه بالطريقة اللي تحت في المين دي .. بنستخدمها في ال  Clean Architecture - Domain Layer - UseCase **
![[Pasted image 20251215212719.png]]


![[Pasted image 20251215212328.png]]

*Extensions*

**من الحاجات المهمة واللي هتتكب كتير في الكود بتاعك**
![[Pasted image 20251215213350.png]]

*Regular Expression*
**هو الجورزم معمول عشان يتشك الأسترنج بتاعك **
![[Pasted image 20251215214256.png]]

![[Pasted image 20251215214923.png]]

![[Pasted image 20251220135341.png]]

*Generics*
**بخلي الكلاس بتاعي مفتوح واخلي اليوزر يدخل النوع بتاعه**
![[Pasted image 20251220140647.png]]

![[Pasted image 20251220141031.png]]

*Sealed Class*

**هو  Abstract جاي يحل مشكلة   انك لو عاوز تتأكد ان كلاس معني بيورث من كلاس تاني فا بدل ما تعملها ب ال  if , else  بتعملها ب  Switch Expression  هي بديل لل  Abstract  مع ال  Switch  و آخره علي مستوي الفايل مينفع تورث منه من ملف بره الفايل**


![[Pasted image 20251220141404.png]]

![[Pasted image 20251220141851.png]]


*Composition / Aggregation*

**هو كلاس جوا كلااس**
**انا هنا خليت العربيه معتمده اعتماد كلي  علي المحرك لو مفيش محرك مفيش عربية **
![[Pasted image 20251220144649.png]]

![[Pasted image 20251220153405.png]]
*Composition*
![[Pasted image 20251220142615.png]]

*Aggregation*
**العلاقه بين ال  Class  هي علاقه تكامل دا قائم بذاته ودا قائم بذاته ولكن الأتنين بيكملو بعض لو حد مات التاني مش هيوت**

![[Pasted image 20251220143326.png]]

![[Pasted image 20251220144551.png]]

*Exceptions*
**هي الطريق اللي بنتعامل بيها مع ال  Errors 
Try  Catch**

```dart
  

void main() {

  calc();

}

  

double division(int x, int y) {

  if (y == 0) {

    throw DivisionByZeroException('Division by zero Exception');

  }

  if (y == 1) {

    throw DivisionByOneException('Division by one Exception ');

  }

  return x / y;

}

  

void calc() {

  try {

    print(division(2, 1));

    print(division(2, 0));

    print(division(2, 2));

  } on DivisionByOneException catch (e) {

    print(e.message);

  } on DivisionByZeroException catch (e) {

    print(e);

  } on Exception {

    print('there is an Exception ,try again ');

  } catch (_) {

    print('this is an Exception , please try again later! ');

  }

  

  // Handle Exceptions

  // try , catch ;

}

  

class DivisionByZeroException implements Exception {

  String message;

  DivisionByZeroException(this.message);

}

  

class DivisionByOneException implements Exception {

  String message;

  DivisionByOneException(this.message);

}
```


*Assertion*

**تتأكد ان الكود ماشي صح  . . .  بيكون علي مستوي المبرمج هو بس اللي بيشوفها**

![[Pasted image 20251220155348.png]]

*SOLID*

**هي المبادئ اللي بنمشي عليهم عشان نبطق كود  Scalable & Maintainable**

![[Pasted image 20251222195046.png]]

*Legacy System*

**هو النظام اللي بيفضل محدش بيعدل عليه لفتره طويله . . . بس برضك في الآخر بنيجي ونعدل عليه **

*Refactoring legacy Code*

**Every things is Integrated With Others**
![[Pasted image 20251222195849.png]]

*sync Programming*
**البرمجه التتابعيه سطر بيتنفذ ورا سطر وهكذا بقي**
![[Pasted image 20251222200850.png]]

*Async Programming*
**هنا انت بتتعامل مع حاجات انت مش عاارف هي جايه امتي و لا هتتنفذ امتي و كدا يعني كل الحاجات دي ... انت بتتعامل هنا مع وعود .. ممكن الداتا تتأخر وممكن تفقد في النص و ممكن تيجي عااادي .. لسه بفكره 😂**


**عاارف انت لما تمسك الفون و تقلب في تطبيق وتطلع منه وتدخل في واحد تاني و هكذا ... كل التطبيقات بتمشي مع بعض مش ورا بعض ... كل التطبيقات لسه مفتوحه في الخلفيه**

![[Pasted image 20251222202208.png]]


![[Pasted image 20251222202351.png]]

**الكلام دا بيحصل إزاي ... في حاجه في ال  CPU  اسمها ال  Threads  دي بتقبي زي المسارات اللي جوا ال  CPU كل مسار منهم بيكون مسؤول عن آداء وظيفه معينه**

**درات مش بتتدعم ال  multithreading  و بنعوضها ب ال  Isolated **
https://dart.dev/language/concurrency
![[Pasted image 20251222202444.png]]


![[Pasted image 20251222203701.png]]

**هنا هو بيوعدك وعد كمان 2 ثانية هيحصل اكشن معين و كمان 3 ثواني هيحصل اكشن تاني .. انت انت بتطبع فأكيد الأكشن جاي و هيتنفذ .. اما بقي لو انت بتكلم سيرفر ممكن الداتا بتاعتك تتأخر عن 3 ثواني علي حسب عوامل تانيه زي ال سرعه النت مثلا**
![[Pasted image 20251222203912.png]]

![[Pasted image 20251222211321.png]]

**خلي باالك الفاليو اللي فوق غير اللي ال name  اللي تحت**
![[Pasted image 20251222212358.png]]

**كدا كدا ال Finally  هتتنفذ هتتفنذ لو ايه حصل**
![[Pasted image 20251222213706.png]]

**لو عندك كذا اكشن بياخدو وقت بتخليهم يتنفذو مع بعض في نفس الوقت وبياخد وقت اكتر واحد فيهم بياخد وقت**  
![[Pasted image 20251222214633.png]]

**sequences of Future**
![[Pasted image 20251222215240.png]]

![[Pasted image 20251222215610.png]]

![[Pasted image 20251222215950.png]]


*Patterns*
