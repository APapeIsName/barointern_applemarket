import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({super.key, required this.imageFileName, required this.productName, required this.address, required this.price, required this.likes, required this.chat});

  final String imageFileName;
  final String productName;
  final String address;
  final int price;
  final int likes;
  final int chat;

  @override
  Widget build(BuildContext context) {
    return Row(
        spacing: 10.0,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(imageFileName, width: 110, height: 120, fit: BoxFit.fitHeight,),
          ),
          Expanded(child: 
            Column(
              spacing: 4.0,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.all(2.0),),
                Flexible(
                  child: Text(productName, maxLines: 2, softWrap: true, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black), overflow: TextOverflow.ellipsis,)
                ),
                Text(address, maxLines: 2, softWrap: true, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 12, color: Colors.black26),),
                Text("${NumberFormat('###,###').format(price)} 원", maxLines: 1, softWrap: true, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),),
                Row(
                  spacing: 2.0,
                  mainAxisAlignment:MainAxisAlignment.end,
                  children: [
                    Icon(Icons.chat_bubble_outline, size: 18.0,),
                    Text(likes.toString()),
                    Container(padding: EdgeInsets.all(2.0),),
                    Icon(Icons.favorite_border, size: 18.0,),
                    Text(chat.toString()),
                    Container(padding: EdgeInsets.all(2.0),),
                  ],
                )
              ],
            ),
          )
        ],
      );
  }
}