import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatefulWidget {
  const MyCurrentLocation({super.key});

  @override
  State<MyCurrentLocation> createState() => _MyCurrentLocationState();
}

class _MyCurrentLocationState extends State<MyCurrentLocation> {
  // Make it a member variable
  final TextEditingController textController = TextEditingController();

  void openLocationSearchBox(BuildContext context) {
    final restaurant = context.read<Restaurant>();

    textController.text = restaurant.deliveryAddress;

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Your location"),
          content: TextField(
            controller: textController,
            decoration: const InputDecoration(hintText: "Enter address.."),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                final newAddress = textController.text.trim();
                Navigator.pop(context, newAddress);
              },
              child: const Text("Save"),
            ),
          ],
        );
      },
    ).then((result) {
      if (result != null && result.isNotEmpty) {
        restaurant.updateDeliveryAddress(result);
      }
    });
  }

  //  Dispose the controller safely
  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
