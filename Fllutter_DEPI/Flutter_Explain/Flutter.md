
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
*مفيش حركه الشاشة بالنسبالي هي ثابته مفيش  dynamic*
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

#### How can use own Image and  fonts on your App 
1- First go to pubspec.yaml 
2- scroll down to *uses-material-desing = true*
3- Click Enter After it 
4- Make two spaces by mastara on keyboard 
5- write *assets:* click enter 
6- write *- assets/images* enter
7- write *- assets/fonts*

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



