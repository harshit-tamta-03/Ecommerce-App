import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_List = [
    {
      "name": "Mens Blazer",
      "picture": "images/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Womens Blazer",
      "picture": "images/blazer2.jpeg",
      "old_price": 135,
      "price": 80,
    },
    {
      "name": "Red Dress",
      "picture": "images/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Black Dress",
      "picture": "images/dress2.jpeg",
      "old_price": 126,
      "price": 83,
    },
    {
      "name": "Women Sandals",
      "picture": "images/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Women Red Sandals",
      "picture": "images/hills2.jpeg",
      "old_price": 90,
      "price": 47,
    },
    {
      "name": "Pajamas",
      "picture": "images/pants1.jpg",
      "old_price": 450,
      "price": 90,
    },
    {
      "name": "Men Trousers",
      "picture": "images/pants2.jpeg",
      "old_price": 150,
      "price": 70,
    },
    {
      "name": "Shoes",
      "picture": "images/shoe1.jpg",
      "old_price": 500,
      "price": 90,
    },
    {
      "name": "Skirt",
      "picture": "images/skt1.jpeg",
      "old_price": 560,
      "price": 200,
    },
    {
      "name": "Pink Skirt",
      "picture": "images/skt2.jpeg",
      "old_price": 600,
      "price": 120,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: products_List.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: products_List[index]['name'],
            prod_picture: products_List[index]['picture'],
            prod_old_price: products_List[index]['old_price'],
            prod_price: products_List[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
            onTap: (){},
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              child: Image.asset(prod_picture,
              fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

