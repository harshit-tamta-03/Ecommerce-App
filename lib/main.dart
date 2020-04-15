import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
// self imports
import 'package:shop_app/components/horizontal_listview.dart';
import 'package:shop_app/components/products.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: HomePage(),
)
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget image_carousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotColor: Colors.black,
      dotSize: 0.0,
      indicatorBgPadding: 0.0,
    ),
  );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('Shop App'),
       actions: <Widget>[
         new IconButton(icon: Icon(Icons.search), onPressed: (){}),
         new IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
       ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: Text("Harshit Tamta"),
              accountEmail: Text('harshit.tamta.personal@gmail.com'),
               currentAccountPicture: GestureDetector(
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Icon(Icons.person, color: Colors.lightBlue ,),
                 ),
               ),
              decoration: BoxDecoration(
                  color: Colors.redAccent
              ),
            ),
   //      Drawer Body

           InkWell(
             onTap: (){},
             child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home,color: Colors.redAccent,),
             ),
           ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard,color: Colors.redAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favourites'),
                leading: Icon(Icons.favorite,color: Colors.redAccent,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.grey,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.lightBlue,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
  //  image carousel begins here
          image_carousel,
          //  padding widget
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Text('Categories',style: TextStyle(color: Colors.red),),),
 //   Horizontal List View
        HorizontalList(),
          //  padding widget
          new Padding(padding: const EdgeInsets.all(10.0),
            child: Text('Recent Products',style: TextStyle(color: Colors.red),),),

          // grid View
          Container(
            height: 320.0,
            child: Products(),
          ),
        ],
      ),
    );
  }
}
