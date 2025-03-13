import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopywell/utils/app_colors.dart';
import 'package:shopywell/widgets/build_elivated_button_widget.dart';
import 'package:shopywell/widgets/build_text_widget.dart';

import '../widgets/payment_option_widget.dart';

class CheckoutPage1 extends StatefulWidget {
  final String productPrice; // Accept product price

  const CheckoutPage1({Key? key, required this.productPrice}) : super(key: key);

  @override
  _CheckoutPage1State createState() => _CheckoutPage1State();
}

class _CheckoutPage1State extends State<CheckoutPage1> {
  int selectedPaymentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Checkout", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildTextWidget(text: "Order ",fontSize: 18,),
                BuildTextWidget(text: widget.productPrice,fontSize: 18,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildTextWidget(text: "Shopping ",fontSize: 18,),
                BuildTextWidget(text: "30",fontSize: 18,),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildTextWidget(text: "Tottal ",color: AppColors.black,fontWeight: FontWeight.w500,fontSize: 18,),
                BuildTextWidget(text: widget.productPrice,color: AppColors.black,fontWeight: FontWeight.w500,fontSize: 18,),
              ],
            ),
            SizedBox(height: 16),
            Divider(color: AppColors.grey,),
            SizedBox(height: 16),
            Text("Payment", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
          Column(
            children: [
              PaymentOptionWidget(
                index: 0,
                selectedIndex: selectedPaymentIndex,
                logoPath: "assets/images/stripe.png",
                cardNumber: "********2109",
                onSelect: (index) {
                  setState(() {
                    selectedPaymentIndex = index;
                  });
                },
              ),
              PaymentOptionWidget(
                index: 1,
                selectedIndex: selectedPaymentIndex,
                logoPath: "assets/images/apple.png",
                cardNumber: "********2109",
                onSelect: (index) {
                  setState(() {
                    selectedPaymentIndex = index;
                  });
                },
              ),
            ],
          ),
          Spacer(),
            BuildElivatedButtonWidget(
              text: "Continue",
              onPressed: () {
              },
              color: AppColors.button_color,
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }


}
