
# Create Project 

![[Pasted image 20260126210423.png]]

![[Pasted image 20260126195617.png]]
==لازم يكون ال  Bundle name  مميز لكل تطبيق لو انت هترفعه علي ال  Play Store ==
**مش فارق الأسم دا لو التطبيق علي جهازك**


![[Pasted image 20260126200319.png]]
*احنا بنكلم فلاتر وفلاتر بتكلم الأندرويد وال IOS  فالحاجه اللي بتكون  configured in flutter  بتسمع في الأتنين في بعض الحالات القليله قوي بتروح تكتب التعريفات دي في الأندرويد لوحده وال  IOs  لوحده بس قولنا قليل قوي قوي قوي *

### امتي تحتاج ال  Emulator 

*لما تيجي ترفع التطبيق وانت جهازك مش اخر فيرجن فا هتحمل  Emulator  علي حسب النسخه بتاعتك وهكذا بقي*

******

# Flutter Basics 

## Difference Between Dart & Flutter 

![[Pasted image 20260126210354.png]]

### Everything in Flutter is Widget 

![[Pasted image 20260126211601.png]]

**10 Widgets = Basics Widget For build any App**

انت مش لازم تحفظ كل ال Widget الموجوده 

### Two main material  
#### Material APP --> Google 
#### Copertino Design --> Apple 
*****

## Entry Flow 

![[Pasted image 20260128063219.png]]

![[Pasted image 20260131070512.png]]


### Entry Point
**Everything in Dart is an Object**
**Everything in Flutter is an Widget**
**Widget = Component (attributes , position)**
**Widgets Tree**

*Tree Root =--> runApp(Widget)*
![[Pasted image 20260128071814.png]]



*******

## Widget Types 
### 1. Stateful Widgets
*بتتفاعل معايا في لون بيتغير لما اضغط علي حاجة و اليوزر بيشوف التغيير*
`بتتقسم الي  2 Class `

![[Pasted image 20260206163231.png]]

`class Widget `
![[Pasted image 20260206170927.png]]

`Class State`
![[Pasted image 20260206171023.png]]




### 2. Stateless Widgets 
*مفيش حركه الشاشة بالنسبالي هي ثابته مفيش  dynamic مفيش لون بيتغير مفيش اي حاجه*
`One Class `
### 3. Inherit Widgets 

*****

##  Widgets 


![[Pasted image 20260202212734.png]]
**Parent Widget , Child Widget**
### 1.Material App 
### 2.Scaffold 
**عباره عن الأسكرين بتاعتك وبتتقسم لكذا حاجه **
![[Pasted image 20260128072947.png]]

### 3.AppBar 
#### Action 
List of Actions 

```dart
ppBar: AppBar(  
  title: Text('Smart Shoop'),  
  centerTitle: true,  
  actions: [  
    Icon(Icons.shopping_cart_outlined)  
  ],  
),
```


### How can use own Image and  fonts on your App 
`1- First go to pubspec.yaml` 
`2- scroll down to` *uses-material-desing = true*
`3- Click Enter After it` 
`4- Make two spaces by mastara on keyboard `
`5- write` *assets:* `click enter` 
`6- write` *- assets/images*` enter`
`7- write` *- assets/fonts*
### 4.Text 
*Flexible Widget*
### 5. Stateless Widget

### 6. Container 
 *هو عباره عن صندوق فاضي ودي فايدته وميزته *
 ![[Pasted image 20260126220408.png]]

![[Pasted image 20260128075717.png]]

### 7.Row 
*horizontal Widgets*
![[Pasted image 20260131120510.png]]

#### Main Axis Alignment
**Is Horizontal** 
#### Cross Axis Alignment
**Is Vertical**

##### Space Around
![[Pasted image 20260131122713.png]]

##### Space Between 
![[Pasted image 20260131122741.png]]
##### Space Evenly

![[Pasted image 20260131122807.png]]
### Column
**Not Scrollable**
*Vertical Widgets*
![[Pasted image 20260131120419.png]]
#### Main Axis Alignment
**Is Vertical** 
#### Cross Axis Alignment
**Is Horizontal**

#### Space Around 

![[Pasted image 20260131122146.png]]
#### Space Between 
![[Pasted image 20260131122302.png]]
#### Space Evenly 
![[Pasted image 20260131122405.png]]

### Padding 
*فواصل داخلية*
### Margin 
*فواصل خارجية*

### SizeBox

```dart
SizedBox(width: 20, height: 20,),

SizedBox(  
  width: 140,  
  child: Divider(  
    thickness: 1,  
    color: Colors.black,  
  ),  
),
```


### CircleAvater


**CircleAvatar** *مش بتتدعم انها تحرك الصورة اللي جواها عشان كدا *
*to make Photo Rounded *

![[Pasted image 20260201155522.png]]

```dart
CircleAvatar(  
  radius: 50,  
  backgroundImage: AssetImage('assets/images/Avatar.jpg'),  
),
```

![[Pasted image 20260201155541.png]]

```dart
  
import 'package:flutter/material.dart';  
  
void main(){  
  runApp(const MyApp());  
}  
  
class MyApp extends StatelessWidget {  
  const MyApp({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Project'),  
          backgroundColor: Colors.red,  
          centerTitle: true,),  
        body: Container(  
            padding: EdgeInsets.symmetric(horizontal: 12 , vertical: 16),  
          height: 200,  
          child: Card(  
            margin: EdgeInsets.symmetric(horizontal: 12,vertical: 16),  
            color: Colors.grey.shade400,  
            shadowColor: Colors.black,  
  
            child: Row(  
              children:  
              [  
                // Image  
                  // Assets                Padding(  
                  padding: const EdgeInsets.only(left: 10),  
                  child: CircleAvatar(  
                    radius: 50,  
                    backgroundImage: AssetImage('assets/images/Avatar.jpg'),  
                  ),  
                ),  
                // Column( Name , Title , Bio )  
                SizedBox(width: 20, height: 20,),  
  
  
                Column(  
                  mainAxisAlignment: MainAxisAlignment.center,  
                  crossAxisAlignment: CrossAxisAlignment.start,  
                  children: [  
                    // Name  
                    Text(  
                        'Abdulrhman Badwy',  
                    ),  
  
                   SizedBox(  
                     width: 140,  
                     child: Divider(  
                       thickness: 1,  
                       color: Colors.black,  
                     ),  
                   ),  
                    // Title  
                    Text(  
                        'Flutter Developer',  
                      textAlign: TextAlign.center,  
                    ),  
  
                    // Bio  
                    Text(  
                        'Based on Sharqia',  
                    ),  
  
                    SizedBox(  
                     width: 120,  
                     child: Divider(  
                       thickness: 1,  
                       color: Colors.black,  
                     ),  
                   ),  
  
                    SizedBox(  
                      width: 100,  
                      height: 20,  
                      child: Text(  
                          'Id: 203050',  
                        textAlign: TextAlign.center,  
                      ),  
                    )  
                  ],  
                )  
              ],  
  
            ),  
          ),  
        ),  
      ),  
    );  
  }  
}
```

### ClipOval 

**بما إن ال  CirlcleAvatar  مش بتتدعم انك تحرك الصورة جواها لفوق او تحت فا الويدجت دي بتتدعم الكلام دا** 

![[Pasted image 20260201160320.png]]

```dart
ClipOval(  
  child: Image.asset(  
    'assets/images/Avatar.jpg',  
    width: 100,  
    height: 100,  
    fit: BoxFit.cover,  
    alignment: Alignment.topCenter,   
  ),  
),
```



### Difference between Icon && IconButton
**Icon** : *is not Clickable*
![[Pasted image 20260203064928.png]]

**IconButton** : *is Clickable and has two required parameters (icon , onpressed)*
![[Pasted image 20260203064857.png]]
### Drawer 

```dart
return Scaffold(  
  drawer: Drawer(),  
  appBar: AppBar(  
    title: Text('Smart Shop'),  
    centerTitle: true,  
    actions: [  
  
    ],  
  ),  
);
```


### Leading 
*Leading  بتبقي مكان ال  Drawer*
*تستخدم واحد منهم يا دا يا دا*

```dart 
appBar: AppBar(
	title : Text('Smart Shoop'),
	leading: Icon(Icons.shopping_cart_outlined), 
),
```


### TextFiled 
![[Pasted image 20260203071433.png]]
![[Pasted image 20260203071557.png]]
### Grid View 
**Scrollable**
![[Pasted image 20260203094041.png]]
```dart 
GridView(  
  padding: EdgeInsets.symmetric(horizontal:16  ),  
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
    crossAxisCount: 2,  
    mainAxisSpacing: 20,  
    childAspectRatio: .8,  
  ),  
  children: [  
    SizedBox(  
    height: 240,  
    child: Column(  
      crossAxisAlignment: CrossAxisAlignment.start,  
      children: [  
        Container(  
          color: Colors.grey,  
          height: 173,  
          width: 173,  
          child: Image.asset('assets/cloths/corzy.png'),  
        ),  
        Text('Cozy Knit Sweater'),  
        Text('\$49.99')  
      ],  
    ),  
  ),  
  
  ],  
),
```

### GridView . builder 
*دي بتخليك ترندر علي حسب الطلب مش كله مره واحده عشان مش تحمل علي المعالج وكارت الشاشة خليك فهمان 🫣*
![[Pasted image 20260203100049.png]]
### Expanded
*انت هنا بتقوله خد الباقي من الشاشه كله*
![[Pasted image 20260203094227.png]]
```dart
Expanded(  
  child: GridView(  
    padding: EdgeInsets.symmetric(horizontal:16  ),  
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
      crossAxisCount: 2,  
      mainAxisSpacing: 20,  
      childAspectRatio: .8,  
    ),  
    children: [  
      SizedBox(  
      height: 240,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [  
          Container(  
            color: Colors.grey,  
            height: 173,  
            width: 173,  
            child: Image.asset('assets/cloths/corzy.png'),  
          ),  
          Text('Cozy Knit Sweater'),  
          Text('\$49.99')  
        ],  
      ),  
    ),  
  
    ],  
  ),  
),
```

*فوق عملنا منتج واحد من المنتجات بس احنا عاوزين نعمل كذا منتج وكل منتج ليه اسم وصورة وسعر مختلفين فعشان كدا هنروح نعمل  Item_model  نعمل كلاس فيه الهيكل الثابت بتاع كل منتج وبعد كدا نعمل منه  List من نوعه ونضيف لكل منتج الحاجات الخاصه بيه *


![[Pasted image 20260203103956.png]]

```dart 
// Product Item Model 
class ProductItemModel {  
  final String name;  
  final String image;  
  final double price;  
  
  ProductItemModel({  
    required this.name,  
    required this.image,  
    required this.price,  
  });  
  
  
  static List<ProductItemModel>listOfItems = [  
    ProductItemModel(  
      name: 'Crozy Knit Sweater',  
      image: 'assets/cloths/corzy.png',  
      price: 49.99,  
    ),  
     ProductItemModel(  
      name: 'Classic Leather Boots',  
      image: 'assets/cloths/classic_shoes.png',  
      price: 129.99,  
    ),  
     ProductItemModel(  
      name: 'Minimalist Backpack',  
      image: 'assets/cloths/backpack.png',  
      price: 79.99,  
    ),  
     ProductItemModel(  
      name: 'Urban Streetwear Jacket',  
      image: 'assets/cloths/streetwear.png',  
      price: 89.99,  
    ),  
     ProductItemModel(  
      name: 'Vintage Denim Jeans',  
      image: 'assets/cloths/jenus.png',  
      price: 59.99,  
    ),  
     ProductItemModel(  
      name: 'Athientic Running Shoes',  
      image: 'assets/cloths/running_shoes.png',  
      price: 99.99,  
    ),  
  
  ];  
}

```

```dart 
// HomeScreen
import 'package:flutter/material.dart';  
import 'package:third_session/product_item_mode.dart';  
  
class HomeScreen extends StatelessWidget {  
  const HomeScreen({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      drawer: Drawer(),  
      appBar: AppBar(  
        title: Text('Smart Shop'),  
        centerTitle: true,  
        actions: [  
          IconButton(  
            icon: Icon(Icons.shopping_cart_outlined),  
            onPressed: (){},  
          ),  
        ],  
      ),  
  
      body: Column(  
        spacing: 15,  
        children: [  
          // Search Bar  
          Padding(  
            padding: const EdgeInsets.symmetric(horizontal: 16),  
            child: TextField(  
              cursorColor: Colors.black,  
              style: TextStyle(color: Colors.black87),  
              decoration: InputDecoration(  
                hintText: 'Search',  
                prefixIcon: Icon(Icons.search,color: Colors.black,),  
                // suffixIcon: Icon(Icons.visibility_off,),  
                enabledBorder: OutlineInputBorder(  
                  borderRadius: BorderRadius.circular(12),  
                  borderSide: BorderSide(  
                    color: Colors.black,  
                    width: 1.5,  
                  ),  
                ),  
                focusedBorder: OutlineInputBorder(  
                  borderRadius: BorderRadius.circular(12),  
                  borderSide: BorderSide(  
                    color: Colors.green,  
                    width: 2,  
                  ),  
                ),  
                // labelText: 'Write you search here ',  
                // helperText: 'Password Should Contain 8 characters',              ),  
            ),  
          ),  
          // Filter  
          Container(  
            margin: EdgeInsets.symmetric(horizontal: 16),  
            child: Row(  
              spacing: 12,  
              children: [  
                _buildFilterWidget('All'),  
                _buildFilterWidget('Featured'),  
                _buildFilterWidget('New'),  
              ],  
            ),  
          ),  
          // Products List  
          Expanded(  
            child: GridView.builder(  
              padding: EdgeInsets.symmetric(horizontal:16  ),  
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(  
                crossAxisCount: 2,  
                mainAxisSpacing: 20,  
                childAspectRatio: .8,  
              ),  
              itemCount: ProductItemModel.listOfItems.length,  
              itemBuilder: (context,index){  
               final item= ProductItemModel.listOfItems[index];  
               return _buildProductItem(item);  
              },  
            ),  
          ),  
  
        ],  
      ),  
    );  
  }  
  Widget _buildProductItem(ProductItemModel item) {  
    return SizedBox(  
      height: 240,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: [  
          Container(  
            decoration: BoxDecoration(  
              color: Colors.grey,  
              borderRadius: BorderRadius.circular(20),  
            ),  
            height: 173,  
            width: 173,  
            child: Image.asset(item.image),  
          ),  
          Text(item.name),  
          Text('\$${item.price}')  
        ],  
      ),  
    );  
  }  
  
  // Custom Widget Function  
  Widget _buildFilterWidget(String text ){  
    return Container(  
      padding:EdgeInsets.symmetric(horizontal: 16 , vertical: 2),  
      decoration: BoxDecoration(  
        color: Colors.grey.shade300,  
        borderRadius: BorderRadius.circular(8),  
      ),  
      child: Text(text , style: TextStyle(color: Colors.black87,fontWeight: FontWeight.w500),),  
    );  
  }  
  
}  
  
// 1. Custom Function  
// 2. For Loop  
// 3. Inheritance
```



### Images 
`image.asset'iamgePath'` *دا لو الصورة لوحديها هتحطها كويدجت منفرده كدا*
**لو انت بقي عندك كونتينر وعاوز الصوره تاخد شكله لو روندت او حاجه هتحط الصوره جوا ال  BoxDecoration **

![[Pasted image 20260208144006.png]]


### Wrap && SingleChildScrollView 

`Wrap` : *دا بيحل مشاكل ال Row  لما يكون فيه عدد من العناصر بس العرض بتاعهم مش مكفي فا دي بيقي بتنزل سطر*

`SingleChildScrollView` *بتعالج بقي نفس المشكلة بس للكولوم *
*ممكن تستخدمها برضك مع ال  Row  وتغير ال  ScrollDirection  تخليه  Horizontal*

### MaterialButton 


###  إزاي تغير من شاشه الي شاشه في ال NavigationButtonBar
`1- Make your Screens as Widgets in Seperated Files `
![[Pasted image 20260208142038.png]]

`2- Make List Of Widgets and Put these Screens in HomeScreen File`
![[Pasted image 20260208142139.png]]

`3- بتروح تعمل متغير يشيل ال  current index  وتخلي لما تضغط عليه يشيل اندكشس الضغطه علي انهي ايقون `
![[Pasted image 20260208142254.png]]

`4- put paramater currentIndex in Navigation = _currentIndex`
![[Pasted image 20260208142416.png]]

`5- put your list of widgets in body: and give it index  `
![[Pasted image 20260208142550.png]]

*بس خلاص بكدا تقدر تضيف بقي اللي انت عاوز*

**دا الكود بتاع ال  HomeScreen**

```dart
import 'package:flutter/material.dart';  
import 'package:third_session/screens/cart_screen.dart';  
import 'package:third_session/screens/product_screen.dart';  
import 'package:third_session/screens/profile_screen.dart';  
import 'package:third_session/screens/whilst_screen.dart';  
  
class HomeScreen extends StatefulWidget {  
  const HomeScreen({super.key});  
  
  @override  
  State<HomeScreen> createState() => _HomeScreenState();  
}  
  
class _HomeScreenState extends State<HomeScreen> {  
  int _currentIndex = 0;  
  
  List<String> titles = [  
    'Home Screen',  
    'Cart Screen',  
    'Wishlist Screen',  
    'Profile Screen',  
  ];  
  
  List<Widget> body = [  
    ProductScreen(),  
    CartScreen(),  
    WishlistScreen(),  
    ProfileScreen(),  
  ];  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      drawer: Drawer(),  
      appBar: AppBar(  
        title: Text('Smart Shop'),  
        centerTitle: true,  
        // leading: Text('Hello'),  
        actions: [  
          IconButton(  
            onPressed: () {  
              debugPrint('Clicked on Cart Icon!');  
            },  
            icon: Icon(Icons.shopping_cart_outlined),  
          ),  
        ],  
      ),  
  
      body: body[_currentIndex],  
      bottomNavigationBar: BottomNavigationBar(  
        currentIndex: _currentIndex,  
        selectedItemColor: Colors.black,  
        enableFeedback: true,  
        onTap: (int index) {  
          setState(() {  
            _currentIndex = index;  
          });  
          debugPrint('My current index $_currentIndex');  
        },  
        type: BottomNavigationBarType.fixed,  
        items: [  
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.shopping_cart_outlined),  
            label: 'Cart',  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.favorite_outline_rounded),  
            label: 'Wishlist',  
          ),  
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: 'Profile'),  
        ],  
      ),  
    );  
  }  
}
```




### Stack

*تعرف انت الشكل الي فيها صوره وفوقيها كدا ايقونه وكنت بتقول اعملها إزاي ومش عاارف ايه هو دا بقي تستخدمه عشان تعمل الحوار دا 🫣🫣 ايوه ايوه هو دا 👇👇*
![[Pasted image 20260208143335.png]]



### لو عندك ايقونة وعاوز تحولها الي لون مختلف لما تضغط عليها 
![[Pasted image 20260208144256.png]]


### ListLittle

*زي نظام كدا كارد بترتب فيها النصوص والأيقونات اللي في الأول وكمان لو فيه ايقونة في الآخر وكدا يعني بدل ما تستخدم Row , Column  وتصغر وتكبر النصوص هي بتبقي واخده الأستيل جاهز*
![[Pasted image 20260208173056.png]]

![[Pasted image 20260208165541.png]]
![[Pasted image 20260208165733.png]]\
```dart
Card(  
  elevation: 5.5,  
  shadowColor: Colors.black,  
  shape: RoundedRectangleBorder(  
    borderRadius: BorderRadius.circular(20)  
  ),  
  color: Colors.white70,  
  child: ListTile(  
    onTap: (){  
    },  
    title: Text('Abdulrhman Badwy'),  
    subtitle: Text('Flutter Developer'),  
    leading: Icon(Icons.developer_board_off),  
    trailing: Icon(Icons.slideshow),  
  ),  
),
```

### Buttons
*بيقولك في انواع زي ال  outlineButton , FlatButton, RaiseButton مخطط ان يتشالو عشان تم استبدالهم بتلت انواع ال  TextButton, ElevatedButton, OutlinedButton *
`1-Text Button`
`2- ElevatedButton`
`3- OutlinedButton`


### GestureDetector & InkWell

`GestureDector`
- يتعامل مع **الـ gestures فقط**
- لا يعطي أي تأثير بصري
- مفيش Animation
- يمكنه التعامل مع gestures كثيرة:
    - onTap
    - onDoubleTap
    - onLongPress
    - onPanUpdate
    - drag
    - scale
        
```dart
GestureDetector(
  onDoubleTap: () {
    print("double tap");
  },
  child: Container(
    width: 100,
    height: 100,
    color: Colors.red,
  ),
)

```

`InkWell`
- نفس onTap تقريبًا
- لكنه مصمم للـ **Material Design**
- يعطي:
    - Ripple effec
    - highlight effect
- يجب أن يكون داخل **Material widget** لكي يظهر التأثير

```dart
Material(
  child: InkWell(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(20),
      child: Text("Click"),
    ),
  ),
)

```

**القاعده الذهبية**
*- لو تريد **ضغط عادي مع شكل جميل** → InkWell*
*- لو تريد **gesture متقدم (drag, scale, complex gestures)** → GestureDetector*

**مثال عملي**
`Product card in Store`
*تستخدم*:
-* InkWell → لأنك تريد ripple*

`لعبة أو سحب عنصر على الشاشة`

*تستخدم:*
*- GestureDetector → لأنك تحتاج drag و gestures*


### Navigation (& passing parameters between screens)

*زماان كنا شغالين علي اسكرين واحده ودلوقتي محتاجين نشتغل علي اكتر من سكرين ودا الطبيعي في كل تطبيق*

*بص ياعم بدوي دلوقتي انت عندك اكتر من سكرين وعاوز تتحرك بينهم هتعمل ايه طب انت دلوقتي عاوز تبعت داتا من اسكرين لسكرين هتعمل ايه برضك يييجي هنا الكل السحري في فلاتر الا وهو تنتنااا* `Navigator `
**شغال زي ال  Stack  يعني انت لما تروح الصفحه التانية يبقي كدا عندك تحت في ال  Stack  الصفحه الأولي وفوقها التانية لما تيجي تعمل  POP اللي فوق هو اللي هيتشال طبقا لمبدأ  Last in first out**

#### طب ايه هو ال  Navigator  ونستخدمه إزاي 

*وليكن انت واقف في الصفحه الأولي وعاوز تروح علي الصفحه التانية هتعمل ايه هيبقي عندك اكشن تحطه بقي في زرار في اي حته اهم حاجه يكون فيه  onPressed هتروح جواها*
```dart
//  لو انت في الأولي وعاوز تروح للتانية 
ElevatedButton(
	onPressed: (){
		Navigator.push(context,MaterialPageRoute(builder:(context){
			return SecondScreen(); 
		}));
	}
),

// لو انت في التانية وعاوز ترجع تاني للأولي 
ElevatedButton(
	onPressed: (){
		Navigator.pop(context); 
	}
),


```
*كدا انت لما تضغط علي الزرار دا هيوديك علي الصفحه التانية ,ولما تروح الصفحه التانية وتضغط هترجع تاني للأولي  *

بس انت قولت اننا ممكن نبعت داتا بين الأسكرينز وبعضها اقولك ياعم بدوي في طريقتين

`1- تبعت الداتا عن طريق الكونستركتور` *هتروح لكلس الصفحه التانية وتعمل فيه المتغيرات من النوع اللي انت عاوز تستقبله سواء بقي كانت متغيرات عاديه int , string   او بقي من نوع كلاس معين انت عامله وبس كدا دي الطريقه الأولي *

```dart 
// First Screen 
ElevatecButton(
	onPressed: (){
		Navigator.push(context,MaterialPageroute(builder:(contex){
			return HomeScreen(id:10 , name: 'Badwy'); 
		})); 
	}
),

********
// Second Screen

class SecondScreen extends StatelessWidget{
	
	final int id ; 
	const SecondScreen({super.key , required this.id}); 
	
	@override
	Widget build(BuildContext context){
		reutrn Scaffold(
			body: Text('$id'),
		);
	}
}

```


`2- عن طريق ال  setting  ودا براميتر بنضاف بعد ال  builder`
```dart 
// First Screen
ElvatedButton(
	onPressed:(){
		Navigator.push(context,MaterialPagerRoute(builder : (contex){
			return SecondScreen(),
		} , settings: RouteSettings(arguments: ProductDetails(id: 200)) 
		))
	}
),

class ProductDetails{
	int id ; 
	ProductDetails({required this.id}); 
}


// Second Screen
class SecondScreen extends StatelessWidget{
	
	final int id ; 
	const SecondScreen({super.key , required this.id}); 
	
	@override
	Widget build(BuildContext context){
		ProductDetails dataReceived = ModalRoute.of(context)!.settings.arguments as ProductDetails; 
		reutrn Scaffold(
			body: Column(
				childern [
					Text('$id'),
					Text('${dataReceived.description} \n ${dataReceived.title} \n ${dataReceived.id}'),
				]
			),
		);
	}
}
```

*لو لاحظت ياعم بدوي هنا بعتنا في ال  Settings  حاجه من نوع كلاس انت عامله في الآخر عاادي يعني اي نوع اهم حاجه لما تروح الكلاس التاني تعرف انت هتستقبليه إزاي هناك زي ما انا عاممل كدا *
**الموصوع سهل بس عاوز تركيز**

*****
**عندنا طرثقة تانية اسمها ال pushNamed  بتسهل علينا القصه دي كلها**

`1- Make a Class named app_route`
```dart 
class AppRoutes{  
  static const String firstScreen = '/first_screen';  
  static const String secondScreen = '/second_screen';  
  static const String thirdScreen = '/third_screen';  
}
```

`2- Make a class named router_generator  `
`3- Make a function called generateRoute(RouteSettings settings) `
```dart
import 'package:flutter/material.dart';  
import 'package:self_learn/routing/app_route.dart';  
import 'package:self_learn/screens/first_screen.dart';  
import 'package:self_learn/screens/second_screen.dart';  
import 'package:self_learn/screens/third_screen.dart';  
  
class RouterGenerator {  
  static Route generateRoute(RouteSettings settings) {  
    final arg = settings.arguments;  
  
    switch (settings.name) {  
      case AppRoutes.firstScreen:  
        return MaterialPageRoute(  
          settings: RouteSettings(name: AppRoutes.firstScreen),  
          builder: (context) {  
            return FirstScreen();  
          },  
        );  
      case AppRoutes.secondScreen:  
        return MaterialPageRoute(  
          settings: RouteSettings(name: AppRoutes.secondScreen),  
  
          // Send argument on  argument  
          // settings: RouteSettings(arguments: arg),  
          // Send argument on Constructor          builder: (context) =>  
              SecondScreen(productDetails: arg as ProductDetails),  
        );  
      case AppRoutes.thirdScreen:  
        return MaterialPageRoute(  
            settings: RouteSettings(name: AppRoutes.thirdScreen),  
  
            builder: (context) => ThirdScreen()  
        );  
  
      default:  
        return MaterialPageRoute(builder: (context)=> Scaffold(  
          body: Center(child: Text('No Route found'),),  
        ));  
    }  
  }  
}
```