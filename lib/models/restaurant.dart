import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';

class Restaurant extends ChangeNotifier {
  // list of food menu
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",

      imagePath: "assets/images/burgers/ClassicCheeseBurger_9.jpg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A tropical twist featuring a juicy beef patty, grilled pineapple, melted cheese, and tangy teriyaki sauce.",
      imagePath: "assets/images/burgers/Aloha-Burger.jpg",
      price: 5.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Pineapple", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Cheese Slice", price: 0.79),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "Smoky and savory burger with BBQ sauce, crispy onions, cheddar cheese, and lettuce.",
      imagePath: "assets/images/burgers/bbq-burger-21.jpg",
      price: 5.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.49),
        Addon(name: "Grilled Onions", price: 0.79),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),
    Food(
      name: "BlueMoon Burger",
      description:
          "A bold creation with creamy blue cheese, caramelized onions, and a perfectly grilled beef patty.",
      imagePath: "assets/images/burgers/bluemoon.jpg",
      price: 6.29,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Blue Cheese", price: 1.29),
        Addon(name: "Grilled Mushrooms", price: 0.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "A delicious plant-based patty served with fresh lettuce, tomato, onion, and creamy mayo.",
      imagePath: "assets/images/burgers/vege_burger.jpg",
      price: 4.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Vegan Cheese", price: 0.99),
        Addon(name: "Avocado", price: 1.49),
        Addon(name: "Extra Patty", price: 2.49),
      ],
    ),

    //salads
    // Asian Salad
    Food(
      name: "Asian Salad",
      description:
          "A colorful mix of greens, shredded carrots, red cabbage, and sesame dressing topped with crunchy noodles.",
      imagePath: "assets/images/salads/asian-salad.jpg",
      price: 4.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Sesame Dressing", price: 0.79),
        Addon(name: "Cashew Nuts", price: 1.29),
      ],
    ),

    // Caesar Salad
    Food(
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce tossed with creamy Caesar dressing, parmesan cheese, and crunchy croutons.",
      imagePath: "assets/images/salads/Caesar-Salad.jpg",
      price: 3.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Boiled Egg", price: 0.99),
        Addon(name: "Extra Parmesan", price: 0.79),
      ],
    ),

    // Greek Salad
    Food(
      name: "Greek Salad",
      description:
          "A refreshing blend of tomatoes, cucumbers, onions, olives, and feta cheese with olive oil and herbs.",
      imagePath: "assets/images/salads/greek-salad.jpg",
      price: 4.29,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Feta", price: 0.99),
        Addon(name: "Pita Bread", price: 1.29),
      ],
    ),

    // Quinoa Salad
    Food(
      name: "Quinoa Salad",
      description:
          "Protein-rich quinoa mixed with fresh vegetables, chickpeas, and lemon herb dressing.",
      imagePath: "assets/images/salads/quinoa-salad.jpg",
      price: 4.79,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.49),
        Addon(name: "Toasted Seeds", price: 0.99),
      ],
    ),

    // Southwestern Salad
    Food(
      name: "Southwestern Salad",
      description:
          "A zesty combo of lettuce, black beans, corn, peppers, and tangy chipotle dressing.",
      imagePath: "assets/images/salads/southwestern-salad.jpg",
      price: 4.59,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Dressing", price: 0.59),
        Addon(name: "Avocado", price: 1.29),
      ],
    ),

    //sides

    // Garlic Bread
    Food(
      name: "Garlic Bread",
      description:
          "Toasted baguette slices brushed with garlic butter and herbs.",
      imagePath: "assets/images/sides/garlic-bread-side.jpg",
      price: 2.29,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Topping", price: 0.99),
        Addon(name: "Extra Garlic Butter", price: 0.49),
      ],
    ),

    // Loaded Fries
    Food(
      name: "Loaded Fries",
      description:
          "Crispy fries topped with melted cheese, bacon bits, and a drizzle of creamy sauce.",
      imagePath: "assets/images/sides/loadedfries-side.jpg",
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.79),
        Addon(name: "Jalapeños", price: 0.59),
        Addon(name: "BBQ Sauce", price: 0.49),
      ],
    ),

    // Mac Side
    Food(
      name: "Mac Side",
      description: "Creamy macaroni and cheese with a golden crispy topping.",
      imagePath: "assets/images/sides/mac-side.jpg",
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.79),
        Addon(name: "Bacon Bits", price: 1.29),
      ],
    ),

    // Onion Rings
    Food(
      name: "Onion Rings",
      description: "Crispy golden onion rings served with tangy dipping sauce.",
      imagePath: "assets/images/sides/onion-side.jpg",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy Mayo", price: 0.59),
        Addon(name: "Extra Sauce", price: 0.49),
      ],
    ),

    // Sweet Potato Fries
    Food(
      name: "Sweet Potato Fries",
      description:
          "Crunchy on the outside and soft inside, lightly salted sweet potato fries.",
      imagePath: "assets/images/sides/sweet-side.jpg",
      price: 2.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Honey Drizzle", price: 0.49),
        Addon(name: "Garlic Dip", price: 0.69),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Cake",
      description:
          "Rich and moist chocolate cake layered with creamy chocolate frosting.",
      imagePath: "assets/images/desserts/cakes.jpg",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate Syrup", price: 0.49),
        Addon(name: "Vanilla Ice Cream Scoop", price: 0.99),
      ],
    ),

    Food(
      name: "Cheesecake",
      description:
          "Smooth and creamy cheesecake with a buttery biscuit base and strawberry topping.",
      imagePath: "assets/images/desserts/cheese.jpg",
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Blueberry Sauce", price: 0.59),
        Addon(name: "Whipped Cream", price: 0.39),
      ],
    ),

    Food(
      name: "Chocolate Chip Cookies",
      description:
          "Soft-baked cookies filled with gooey chocolate chips and a hint of vanilla.",
      imagePath: "assets/images/desserts/cookies.jpg",
      price: 1.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Cookie", price: 0.99),
        Addon(name: "Warm It Up", price: 0.29),
      ],
    ),

    Food(
      name: "Fruit Gelatin",
      description:
          "Refreshing fruity gelatin dessert made with a blend of seasonal fruit flavors.",
      imagePath: "assets/images/desserts/gelatin.jpg",
      price: 2.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.39),
        Addon(name: "Mixed Fruit Topping", price: 0.69),
      ],
    ),

    Food(
      name: "Strawberry Pastry",
      description:
          "Flaky pastry filled with sweet strawberry jam and topped with light icing.",
      imagePath: "assets/images/desserts/pastries.jpg",
      price: 3.29,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Jam", price: 0.49),
        Addon(name: "Sugar Glaze", price: 0.29),
      ],
    ),

    //drinks
  ];

  /* 

  G E T T E R S

  */

  List<Food> get menu => _menu;

  /*

  O P E R A T I O N S

  */

  // add to cart

  // remove from cart

  // get total price of cart

  //get total number of items in cart

  // clear cart

  /*

  H E L P E R S

  */

  // generate a receipt

  // format double value into money

  //format list of addons into a string summery
}
