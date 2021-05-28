import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ngoanduy_flutter/cart/cartpage.dart';
import 'package:ngoanduy_flutter/model/carts.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int cartAmmount = Cart.cart.length;
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search product",
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        GestureDetector(
          onTap: () {
            if (cartAmmount < 1) {
              Fluttertoast.showToast(
                  msg: "No product in cart",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);
            } else {
              Navigator.pushNamed(context, CartPage.routeName);
            }
          },
          child: Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(10),
            child: Badge(
                badgeContent: Text(cartAmmount.toString()),
                child: Icon(Icons.shopping_cart_outlined)),
          ),
        )
      ],
    );
  }
}
