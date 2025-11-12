import 'package:flutter/material.dart';
import 'package:food_app/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in Prograss.."),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
      ),
      body: Column(children: [MyReceipt()]),
    );
  }
}
