import 'package:flutter/material.dart';
import 'package:ngoanduy_flutter/model/products.dart';

class CategoryForm extends StatelessWidget {
  List<Products> products = Products.init();

  int id;

  CategoryForm({this.id});

  List<Products> getPfromCate(int id) {
    List<Products> tmp = [];
    for (int i = 0; i < products.length; i++) {
      if (products[i].cateId == id) {
        tmp.add(products[i]);
      }
    }
    return tmp;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: getPfromCate(id).length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset(products[index].image),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(products[index].title),
                  Text(products[index].price.toString()),
                ],
              ),
            );
          }),
    );
  }
}
