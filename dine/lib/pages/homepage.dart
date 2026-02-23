import 'package:dine/pages/detail.dart';
import 'package:dine/recipe.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Widget buildMyrecipecard(Myrecipe recipe) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(recipe.image)),
          Text(
            recipe.label,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontFamily: 'palatino',
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dine'), centerTitle: true),
      body: ListView.builder(
        itemCount: Myrecipe.samples.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Detail(recipe: Myrecipe.samples[index],);
                  },
                ),
              );
            },
            child: buildMyrecipecard(Myrecipe.samples[index]),
          );
        },
      ),
    );
  }
}
