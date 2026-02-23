import 'package:flutter/material.dart';

class Myrecipe {
  String label;
  String image;
   static List <Myrecipe> samples=[
          Myrecipe(
            'lasagna',
            'assets/images/lasagna.jpg',
          ),
          Myrecipe(
            'grilled salmon',
            'assets/images/grilled_salmon.jpg'
          ),
          Myrecipe(
            'rice and meat',
            'assets/images/rice_meat.jpg'
          ),
          Myrecipe(
            'Sandwich',
            'assets/images/sandwich.jpg'
          ),
          Myrecipe (
            'Broccoll and avocado',
            'assets/images/broccolli_avocado.jpg'
          ),
      ];

  Myrecipe(
    this.label,
    this.image,
  );
}

class Recipe extends StatelessWidget {
  const Recipe({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
