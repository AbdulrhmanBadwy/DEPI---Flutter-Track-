
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

```dart 
Text('Abdulrhman Badwy', 
	style: TextStyle(fonstSize = 10 , fontWeight = FontWeight.bold ),
	textDirection : TextDirection.rtl,
	maxLine = 3 , 
)
```
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

### SizedBox

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



### Switch 

![[Pasted image 20260212070712.png]]

```dart 
Switch(
value: true , 
onChanged: (value){
	setState({
		
	});
}
),
```

### Radio 

![[Pasted image 20260212071146.png]]

```dart
string groupValue = null , 
Radio(value: 'Answer one ' , groupValue: groupValue , onChanged: (value){
	setState({
		groupValue = value ; 
	});
}),
Radio(value: 'Answer two ' , groupValue: groupValue , onChanged: ),
Radio(value: 'Answer three ' , groupValue: groupValue, onChanged: ),
```
### TextFiled 

![[Pasted image 20260203071433.png]]
![[Pasted image 20260203071557.png]]

### TextFormField
*دا في حاجة اسمها ال  Controller  دا بقي بيخزن النص اللي انت بتكتبه جواه عشان لو عاوز تضيفه في حته تانية او تعمل بيه اي حاجة*
![[Pasted image 20260213205154.png]]
*هنا هياخد منك متغير من نوع الكلاس وهتعمل  default constructor  بعد كدا تروح تستخدمه بقي في ال  Controller 👇👇*
![[Pasted image 20260213205323.png]]
*وبياخد نفس البرامتر بتاعت ال  Textfiled  العادي*

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

### ListView.builder & ListView.Seperated
*بتخلي الscroll  بالطول و كل عنصر واخد عرض الشاشة كدا مش زي ال gridView  بيحط اكتر من عنصر في السطر *
وكمان حته ال  Builder  دي بتعمل حاجة اسمها  lazy render  ودي بترند ال الويدجت اللي ظاهره بس 
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
`image.network(URL)`
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

### Light and Dark Theme 
*لما يكون فيه حاجات ثابتة علي مستوي التطبيق بتاعك مثلا زي ان كل  heading 1  لونهم احمر او اي لون فانت مش هتروح عند كل واحد وتديه لون انت بتعمل زي نظام شكل ثابت يتطبق عليهم هما الكل*

**هتروح تعمل كلاس اسمه وليكن  AppThemeData**
![[Pasted image 20260213073945.png]]
```dart
import 'package:flutter/material.dart';  
  
class AppThemeData{  
  static final ThemeData lightTheme = ThemeData(  
    brightness: Brightness.light,  
    primaryColor: Colors.blue,  
    primaryColorLight: Colors.blue.shade100,  
    primaryColorDark: Colors.blue.shade900,  
    scaffoldBackgroundColor: Colors.white,  
    textTheme: TextTheme(  
      bodySmall: TextStyle(  
        fontSize: 12,  
        fontWeight: FontWeight.normal,  
        color:  Colors.black,  
      ),  
      bodyMedium: TextStyle(  
          fontSize: 14,  
          fontWeight: FontWeight.normal,  
          color: Colors.black  
      ),  
      bodyLarge: TextStyle(  
        fontWeight: FontWeight.bold,  
        fontSize: 16,  
        color: Colors.black,  
      ),  
    ),  
    appBarTheme: AppBarTheme(  
      backgroundColor: Colors.blue,  
      elevation: 2,  
      centerTitle: true,  
    ),  
    elevatedButtonTheme: ElevatedButtonThemeData(  
      style: ElevatedButton.styleFrom(  
        backgroundColor: Colors.white,  
        foregroundColor: Colors.black,  
      ),  
    ),  
  );  
  static final ThemeData darkTheme = ThemeData(  
    brightness: Brightness.dark,  
    primaryColor: Colors.blue.shade800,  
    primaryColorLight: Colors.blue.shade600,  
    primaryColorDark: Colors.blue.shade400,  
    scaffoldBackgroundColor: Colors.black,  
    textTheme: TextTheme(  
      bodySmall: TextStyle(  
        fontSize: 12,  
        fontWeight: FontWeight.normal,  
        color:  Colors.white,  
      ),  
      bodyMedium: TextStyle(  
          fontSize: 14,  
          fontWeight: FontWeight.normal,  
          color: Colors.white  
      ),  
      bodyLarge: TextStyle(  
        fontWeight: FontWeight.bold,  
        fontSize: 16,  
        color: Colors.white,  
      ),  
    ),  
    appBarTheme: AppBarTheme(  
      backgroundColor: Colors.black,  
      elevation: 2,  
      centerTitle: true,  
    ),  
  
  );  
}
```
### Basic Navigation (& passing parameters between screens)

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
**عندنا طريقة تانية اسمها ال pushNamed  بتسهل علينا القصه دي كلها**

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

### GoRoter : Navigation & passing data 
*this is a package that we can import it in pubspec.yaml* `go_router: ^17.1.0`
*لازم تكون عارف تستخدم الحاجة باكتر من طريقة*
![[studio64_KxmEeRrPHa.png]]
![[studio64_cWalHfz76c.png]]
![[studio64_DRBZjzAA7q.png]]
![[studio64_JqkEW2lrPn.png]]

*بس كدا هتروح عند كل اسكرين في مكان الضغط هتقوله*`context.push/pushName/pushReplacement(AppRoutes.ScreenName , extra : )`
*extra  عشان تباصي فيها المتغيرات اللي الأسكرينه عاوزها *





## Responsive and Adaptive UI 

### MediaQuery

`MediaQuery.of(context).size.width `: *بتقوله ياخد عرض الشاشة *
`MediaQuery.of(context).size.height: ` *بتقوله ياخد طول الشاشة ممكن تضرب بقي في اي نسبة انت عاوزها *

*بتعرفني الجهاز بتاعي هو دلوقتي بالطول ولا بالعرض*
![[Pasted image 20260216162024.png]]
### شوية ويدجت بتساعد ان التطبيق يكون Responsive
#### Expanded 
*لما اخليها parent  لويدجت تانية بقولها روحي خدي المساحه المتبقية مبيبص علي العرض بتاع الويدجت نفسها*
![[Pasted image 20260216163520.png]]

#### Flexible 

![[Pasted image 20260216164013.png]]
*بتتأقلم مع المحتوي اللي جواها*
![[Pasted image 20260216164134.png]]

### Adaptive UI 
#### LayoutBuilder
![[Pasted image 20260216172340.png]]



``
# State Management
## Some Basics

![[Pasted image 20260209210822.png]]
![[Pasted image 20260209211041.png]]


*عندنا حاجات كتيره ممكن نستخدمه عشان نعمل بيها ال  State management *
![[Zoom_6OQP8mIdSh.png]]
`1- setState`
![[Zoom_6Sd1jO9W4S.png]]

**اشهر ال  state management**

`1- Bloc` : *افضل وحده في العموم *
`2- Riverpod`
`3- Redux`
`4- Getx`
`5- Provider` *Projects Medium*
*افضل واحده في كل حاجه علي حسب it depends*   
*كل واحده ليها مميزاتها وعيبوبها*

![[Pasted image 20260209211819.png]]

## Provider 

### هو احنا ليه بنستخدم  State Management  


**Separation of Concern** 
*يعني ايه دي بقي يا عم بدوي يا متعلم بره وجوه اقولك يا حبيب عمك بدوي دي انت بتفصل ال UI  عن ال Logic عشان الدنيا متبقاش خلطبيطا بالصلصة ولو اي حد فيهم اتغير ميأثرش علي التاني*
###  طب إزاي اطبق ال  Provider 
*بص ياعم بدوي انت هتروح تعمل فولدر وتحط جواه ملف اسمع  Controller  و تعمل جواه كلاس تخليه يورث من ChangeNotifier*
`1-Make a class and make it inherit from the ChangeNotifier`
![[Pasted image 20260213220209.png]]
*تاني حاجة هتروح زي الشاطر تكتب اللوجيك بتاعك جوه الكلاس سواء بقي عاوز تضيف عنصر تحذف عنصر مش عاارف ايه اكتبه جوه الكلاس ومتنساش ال SetState  بتاعت ال  Provider  اللي هي  notifyListeners*

`2- Write your logic in this class and don't forget the SetState of Provder that Called notifyListeners`
![[Pasted image 20260213221237.png]]
**لاحظ هنا انت عملت ال  Provider  بس المشكلة عندك انك مش عاارف تستخدم نسخه واحده منه تكون مسمعة في كل الإسكرينز اللي عندك **
**خلي بالك البشمهندس جوبا هيمسكك ينفخك لو شافك عامل  global Variable  من المحرمات الحاجة دي**

*الحل انك هتروح في ملف ال  main  وتروح علي  MaterialApp  وتعملها راب  ChangeNotifierProvider  الويدجت دي بتديك براميتر اسمه  Create  بيخليك تعمل  Return  لل  Provider  بتاعك *
	عارف دا عامل زي فكرة الشجرة كدا لما تحط المية في الجذر بتوصل لباقي الأفرع هنا بالضبط عملنا كدا حطينا نسخة من ال  Provider  بتاعنا  في الجذر عشان كل الإسكرينز التانية تعرف تعمل  Access  عليه ويكون واحد بينهم هما الكل 
![[Pasted image 20260213223352.png]]

*طب انت بعد ما عملت دا كله عاوز تروح بقي تستخدم نفس النسخه في الإسكرين اللي انت عاوزها هتعمل ايه هتروح للأسكرين وتعمل كدا 👇👇* وتستخدم بقي النسخة اللي موجوده عندك دي 
![[Pasted image 20260213225531.png]]

*Consumer Widget  دي وظيفتها انها تخلي الحته اللي هي بتراب عليها بس هي اللي يتم عمل ليها ريبيلد من اول وجديد بدل ما الإسكرين كلها يتعمل ليها ريبلد *

![[Pasted image 20260219132943.png]]
![[Pasted image 20260219133755.png]]

![[Pasted image 20260219135214.png]]


![[Pasted image 20260213230818.png]]

**Summary for all We do**
![[Pasted image 20260213231549.png]]

### الملفات اللي عملناها لحد الآن 
![[studio64_IklqvybISn.png]]
*Main File*
```dart 
import 'package:flutter/material.dart';  
import 'package:fourth_session/controllers/todo_controller.dart';  
import 'package:fourth_session/screens/home_screen.dart';  
import 'package:provider/provider.dart';  
  
void main(){  
runApp(const MyApp());  
}  
  
class MyApp extends StatelessWidget {  
  const MyApp({super.key});  
  
  @override  
  Widget build(BuildContext context) {  
    return ChangeNotifierProvider(  
      create: (_)=> TodoController() ,  
      child: MaterialApp(  
        home: HomeScreen(),  
      ),  
    );  
  }  
}
```

*home_screen*
```dart
import 'package:flutter/material.dart';  
import 'package:fourth_session/controllers/todo_controller.dart';  
    import 'package:provider/provider.dart';  
  
class HomeScreen extends StatefulWidget {  
  const HomeScreen({super.key});  
  
  @override  
  State<HomeScreen> createState() => _HomeScreenState();  
}  
  
class _HomeScreenState extends State<HomeScreen> {  
  @override  
  Widget build(BuildContext context) {  
    final todoController = Provider.of<TodoController>(context , listen: false);  
    return Scaffold(  
      appBar: AppBar(title: Text('Todo App'), centerTitle: true),  
      body: ListView(  
        children: [  
          Padding(  
            padding: const EdgeInsets.all(16.0),  
            child: Row(  
              mainAxisSize: MainAxisSize.min,  
              children: [  
                Expanded(  
                  child: TextFormField(  
                    controller:  todoController.notesController ,  
                    decoration: InputDecoration(  
                      hintText: 'Write your notes',  
                      border: OutlineInputBorder(),  
                    ),  
                  ),  
                ),  
                TextButton(onPressed: () {  
                  setState(() {  
                    todoController.addTodo();  
                    todoController.notesController.clear();  
                  });  
                }, child: Text('Add +')),  
              ],  
            ),  
          ),  
  
          Consumer<TodoController>(  
            builder: (BuildContext context, TodoController value, _) {  
  
              if(value.todos.isEmpty){  
                return Center(  
                  child: Text('Your todos are empty , please add a new one!'),  
                );  
              }  
              return ListView.builder(  
                physics: NeverScrollableScrollPhysics(),  
                itemCount: value.todos.length,  
                shrinkWrap: true,  
                itemBuilder: (context, index) {  
                  final item = value.todos[index];  
                  return Dismissible(  
                    key: Key(item.id.toString()),  
                    onDismissed: (_){  
                      todoController.removeTodo(item.id);  
                    },  
                    background: Container(  
                      padding: EdgeInsets.all(16),  
                      alignment: Alignment.centerRight,  
                      color: Colors.red,  
                      child: Icon(Icons.delete_forever),  
                    ),  
                    child: ListTile(  
                      title: Text(item.title),  
                      trailing: Checkbox(value: item.isChecked, onChanged: (val) {  
                        todoController.toggleCompleted(item.id);  
                      }),  
                    ),  
                  );  
                },  
              );  
            },  
          ),  
        ],  
      ),  
    );  
  }  
}
```

*todo_Controller*
```dart
  
import 'package:flutter/widgets.dart';  
import 'package:fourth_session/models/todo_item.dart';  
  
// Provider  
class TodoController extends ChangeNotifier{  
  
  final List<TodoItem> _todos = [];  
  final TextEditingController notesController = TextEditingController();  
  
  List<TodoItem> get todos => _todos;  
  // Add  
  void addTodo(){  
    final title = notesController.text;  
    if(title.trim().isEmpty)return;  
      
    final nowTime = DateTime.now().toUtc().microsecondsSinceEpoch;  
    final newTodo = TodoItem(id: nowTime,title: title );  
  
    _todos.add(newTodo);  
  
    // SetState for Provider  
    notifyListeners();  
  }  
  // Remove  
  void removeTodo(int id){  
    _todos.removeWhere((item)=> item.id  == id );  
    notifyListeners();  
  }  
  // Mark as Completed  
  void toggleCompleted(int id  ){  
    final item = _todos.firstWhere((item)=>item.id == id);  
    item.isChecked = !item.isChecked;  
    notifyListeners();  
  }  
  // Filtration  
  
}
```

*todo_item*
```dart
class TodoItem{  
  final String title ;  
   bool isChecked;  
   final int id ;  
  
  TodoItem({required this.id, required this.title,  this.isChecked = false});  
  
  @override  
  String toString() {  
    return 'Todo title is : $title' ;  
  }  
}
```


![[Zoom_exVcIAXjVV.png]]

![[Zoom_gmIiRXLdVh.png]]



## Bloc (Business Logic)
**بتجبرك انك تطبق  Separation of Concern اللي هو فصل ال UI  عن اللوجك**

###  Why Bloc?

![[chrome_UI3tMeHV0t.png]]

![[Pasted image 20260219142049.png]]
![[chrome_nAwq7J3Q3Z.png]]

**نفس الخمس خطوات اللي في ال  Provider  هما نفس الترتيب بس هنغير المسميات بس**
![[Pasted image 20260219133606.png]]

### Steps to Make Cubit 

*خطوات إنشاء الملفات*
![[Pasted image 20260219151200.png]]

`2- Difference Between todo_cubit Vs todo_sate`
**الملفين بتعاملو مع بعض بمبدأ ال  part , part of **  *يعني ال  Cubit  بيقول انا جزء من الكود بتاع الكود اللي موجود في ال  state  وال  state  بتقول  انا جزء من الكود بتاع ال  cubit دا بيقول معلومة والتاني بيأكدها*
![[Pasted image 20260221074514.png]]

`todo_cubit` *logic * *يعني كل اكشن انت محتاج تعمله زي انك تضيف انك تحذف انك تعمل فيلتر اي فنكشن انت عاوزها تكتبها هنا *
![[Pasted image 20260219152615.png]]
`todo_state` *Ploymorphism*  *ماشي بالمبدأ دا*
*انت بتروح تحدد الحالات اللي عندك هنا انت عندك ياإما بيحمل الداتا يأما خلص تحميل يإما فشل في التحميل علي حسب كل حاله انت هتعرض حاجات مختلفة للمستخدم*
**مستحيل التلت حالات يحصلو مع بعض يا دا يا دا يا دا واحده منهم بس اللي هتحصل**
![[Pasted image 20260219152239.png]]

![[Pasted image 20260219152709.png]]


### 
![[Pasted image 20260221072547.png]]


**Convert ECommerce App From SetState to Bloc**

*logic*
![[Pasted image 20260221072952.png]]

![[Pasted image 20260221073238.png]]

#### StatefulWidget Life Cycle 
![[Pasted image 20260221082028.png]]
##### create State *Create a state and may be change in the future*
##### Init State *your class is created and it's context is defined in the widget tree* Logic for once 
##### didChange
##### didUpdate Widget

##### Build 
##### dispose *صفحة واتقفلت لما الصفحة تقفل فضي الداتا بتاعتي افضي الميموري*



### Bloc Observable 
*هو كلاس محفوظ بتعمله كوبي بيست يعني بس بيخليك فاااهم ايه اللي بيحصل لو حصل ايرور بتعرف ايه و حصل ليه ومش عاارف اهي لما حاجة تتعمل جديده بيطلعلك وهكذا بقي*


### What is the difference between Bloc & Cubit 



# Database 


