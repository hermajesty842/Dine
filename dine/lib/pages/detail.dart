import 'package:dine/data/notifiers.dart';
import 'package:flutter/material.dart';
import 'package:dine/recipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

int sliderval = 1;

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
      appBar: AppBar(
        title: Text(widget.recipe.label),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () async {
              isdarkmodenotifier.value = !isdarkmodenotifier.value;
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool('kconstants.thememodekey',
              isdarkmodenotifier.value);
            },
            icon: ValueListenableBuilder(
              valueListenable: isdarkmodenotifier,
              builder: (context, isdarkmode, child) {
                return Icon(isdarkmode?Icons.dark_mode:Icons.light_mode);
              },
            ),
          ),
        ],
      ),
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
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(8.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity * sliderval} ${ingredient.measure} ${ingredient.name}',
                  );
                },
              ),
            ),
            Slider(
              min: 1,
              max: 10,
              divisions: 9,
              label: '${sliderval * widget.recipe.servings}servings',
              value: sliderval.toDouble(),
              onChanged: (value) {
                setState(() {
                  sliderval = value.round();
                });
              },
              activeColor: Colors.green,
              inactiveColor: Colors.black12,
            ),
          ],
        ),
      ),
    );
  }
}
