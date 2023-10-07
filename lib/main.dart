import 'package:flutter/material.dart';
import 'package:test1/config/data.dart';
import 'package:test1/widgets/CardSection.dart';
import 'package:test1/widgets/PieChart.dart';
import 'package:test1/widgets/header.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      theme: ThemeData(fontFamily: 'Circular'),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Container(
            height: 120,
            child: WalletHeader(),
          ),
          Expanded(
            child: CardSection(),
          ),
          Expanded(
            child: PieChart(),
          )
        ],
      ),
    );
  }
}
