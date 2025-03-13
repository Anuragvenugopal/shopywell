import 'package:flutter/material.dart';

class SpecialOfferWidget extends StatefulWidget {
  const SpecialOfferWidget({Key? key}) : super(key: key);

  @override
  State<SpecialOfferWidget> createState() => _SpecialOffersWidgetState();
}

class _SpecialOffersWidgetState extends State<SpecialOfferWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Special Offers",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Get the best deals at best prices!"),
        ],
      ),
    );
  }
}
