import 'package:flutter/material.dart';

class SimilarProductsWidget extends StatefulWidget {
  final List<String> productImages;
  final String productName;
  final String productPrice;

  const SimilarProductsWidget({
    Key? key,
    required this.productImages,
    required this.productName,
    required this.productPrice,
  }) : super(key: key);

  @override
  _SimilarProductsWidgetState createState() => _SimilarProductsWidgetState();
}

class _SimilarProductsWidgetState extends State<SimilarProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Similar To 282+ Items",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: widget.productImages.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 140,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          widget.productImages[index],
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        widget.productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        widget.productPrice,
                        style: TextStyle(color: Colors.red),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
