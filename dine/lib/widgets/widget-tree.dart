import 'package:dine/pages/homepage.dart';
import 'package:dine/pages/post_card.dart';
import 'package:dine/pages/restaurant.dart';
import 'package:flutter/material.dart';

List<Widget> pages = [Homepage(), Post(), Restaurant()];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

int currentindex = 0;

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: pages[currentindex],
     bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: 30,
          decoration: BoxDecoration(
            color: Colors.deepPurpleAccent,
            borderRadius: BorderRadius.circular(30),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.credit_card),
                onPressed: () => setState(() => currentindex = 0),
              ),
              IconButton(
                 icon: Icon(Icons.home),
                onPressed:  () => setState(() => currentindex =1),
              ),   
              IconButton(
                 icon: Icon(Icons.post_add_sharp,),               
                onPressed:  () => setState(() => currentindex =2),
                
              ),                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
            ],
          ),
        ),
      ),
      
    );
  }
}
