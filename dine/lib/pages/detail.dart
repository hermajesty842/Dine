import 'package:flutter/material.dart';
import 'package:dine/recipe.dart';

class Detail extends StatefulWidget {
  final Myrecipe recipe;
  const Detail({super.key, required this.recipe});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.recipe.label),
      backgroundColor: Colors.blue,),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(image: AssetImage(widget.recipe.image)),
            ),
            SizedBox(height: 4),
            Text(widget.recipe.label, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
