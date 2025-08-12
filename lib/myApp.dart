import 'package:flutter/material.dart';

import 'money_managemant.dart';
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Money Management",
      home: MoneyManagemant(),
    );
  }
}
