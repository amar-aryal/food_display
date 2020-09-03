import 'package:flutter/material.dart';
import 'food_details.dart';
import 'package:food_recipe/foodInfo.dart';

class FoodPage extends StatelessWidget {
  
   FoodInfo isClicked;
  @override
  Widget build(BuildContext context) {
    return FoodDetails(place: 'Whiskey King',foodName: 'Burger', price: '26',link: 'assets/burger.jpg', ingredients: ['Cheese','Meat'], ingLinks: ['assets/cheese.jpg','assets/meat.jpg']); 
   
  }
}