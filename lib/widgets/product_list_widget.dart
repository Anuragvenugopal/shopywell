import 'package:flutter/material.dart';
import 'package:shopywell/screens/product_view_page.dart';

class ProductListWidget extends StatefulWidget {
  @override
  _ProductListWidgetState createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  final List<Map<String, String>> products = [
    {
      "name": "Women Printed Kurta",
      "price": "\$100",
      "image": "assets/images/kurtha.png",
      "description": "A stylish and comfortable printed kurta, perfect for casual and festive wear."
    },
    {
      "name": "HRX by Hrithik Roshan",
      "price": "\$120",
      "image": "assets/images/shoes_mens.png",
      "description": "High-performance sports shoes designed for comfort and durability."
    },
    {
      "name": "Mens Starry",
      "price": "\$90",
      "image": "assets/images/shirt.png",
      "description": "A fashionable men's shirt with a starry design, suitable for all occasions."
    },
    {
      "name": "Black Winter...",
      "price": "\$110",
      "image": "assets/images/mens_winter.png",
      "description": "Stay warm and stylish with this black winter jacket, designed for ultimate comfort."
    },
  ];


  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProductViewPage(
              name: products[index]["name"]!,
              price: products[index]["price"]!,
              image: products[index]["image"]!,
              description:products[index]["description"]!,
            ),));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 5,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(products[index]["image"]!, fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(products[index]["name"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(products[index]["price"]!, style: TextStyle(color: Colors.red)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
