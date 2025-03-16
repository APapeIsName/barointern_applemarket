import 'package:barointern_applemarket/detail/detail_body.dart';
import 'package:flutter/material.dart';

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
            
          }, icon: Icon(Icons.arrow_back)),
        shadowColor: Colors.black,
        // IconButton(onPressed: onPressed, icon: Icon(Icons.ring_volume)),
      ),
      body: buildDetailBody(index),
      bottomNavigationBar: Text("테스트", style: TextStyle(fontSize: 20),),
    );
  }
}