import 'package:barointern_applemarket/detail/detail_body.dart';
import 'package:barointern_applemarket/home/product.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  DetailPage({super.key, required this.index});

  final int index;

  @override
  State<StatefulWidget> createState() => _DetailPage(index: index);
}

class _DetailPage extends State<DetailPage> {
  _DetailPage({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("상품 상세"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        shadowColor: Colors.black,
      ),
      body: buildDetailBody(index),
      bottomNavigationBar: BottomAppBar(
        shadowColor: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(padding: EdgeInsets.all(16),child: Icon(Icons.favorite_border, size: 24.0, color: Colors.black38,),),
            Text(
              "${NumberFormat('###,###').format(products[index].price)}원",
              maxLines: 1,
              softWrap: true,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(16.0),
                color: Colors.deepOrange,
                width: 100,
                height: 55,
                child: Text("채팅하기", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
