import 'package:barointern_applemarket/detail/detail.dart';
import 'package:barointern_applemarket/home/home_list_item.dart';
import 'package:flutter/material.dart';
import 'package:barointern_applemarket/home/product.dart';

Widget buildHomeList() {
  return ListView.builder(
    padding: const EdgeInsets.all(8),
    itemCount: products.length,
    itemBuilder: (BuildContext context, int index) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(index: index),
            ),
          );
        },
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Color(0xffe9ecef),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 0,
                    blurRadius: 5.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: HomeListItem(
                imageFileName: products[index].imageFileName,
                productName: products[index].productName,
                address: products[index].address,
                price: products[index].price,
                likes: products[index].likes,
                chat: products[index].chat,
              ),
            ),
            Container(padding: EdgeInsets.all(8)),
          ],
        ),
      );
    },
  );
}
