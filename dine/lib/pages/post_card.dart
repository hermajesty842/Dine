import 'package:flutter/material.dart';

class Post_card extends StatelessWidget {
  final Post post;
  const Post_card({super.key,required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(padding: EdgeInsetsGeometry.all(16),
              child: PostCard(post:posts[0]),
              ),
            )
          ],
        ),
        ),
        
    );
  }
}


