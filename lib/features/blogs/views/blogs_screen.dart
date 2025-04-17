import 'package:ecom/features/blogs/widgets/blog_tile.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Blogs"),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            BlogTile(),
            BlogTile(),
            BlogTile(),
            BlogTile(),
          ],
        ));
  }
}
