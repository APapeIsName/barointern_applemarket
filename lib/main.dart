import 'package:flutter/material.dart';
import 'package:barointern_applemarket/home/home.dart';

void main() {
  runApp(const AppleMarket());
}

class AppleMarket extends StatelessWidget {
  const AppleMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '사과마켓',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(title: '르탄동'),
    );
  }
}
