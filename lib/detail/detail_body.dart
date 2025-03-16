import 'package:barointern_applemarket/home/product.dart';
import 'package:flutter/material.dart';

Widget buildDetailBody(int index) {
  return SingleChildScrollView(
    child: Column(
      children: [
        Image.asset(products[index].imageFileName, fit: BoxFit.cover, width: double.infinity, height: 250,),
        Container(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.account_circle, color: Colors.deepOrangeAccent, size: 60,),
                  Expanded(child: 
                    Column(
                      spacing: 3.0,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(products[index].seller, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                        Text(products[index].address, style: TextStyle(color: Colors.black26))
                      ],
                    )
                  ),
                  Column(
                      spacing: 3.0,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("39.3°C", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.green)),
                        Text("매너온도", style: TextStyle(color: Colors.black38, decoration: TextDecoration.underline))
                      ],
                  )
                ],
              ),
              Divider(color: Colors.black26, thickness: 1.0,),
              Text(products[index].productName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black)),
              Container(padding: EdgeInsets.all(8.0)),
              Text(products[index].productDescription, style: TextStyle(fontSize: 16, color: Colors.black))
            ],
          )
        )
      ],
    ),
  );
}