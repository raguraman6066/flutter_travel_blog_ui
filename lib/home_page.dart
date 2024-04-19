import 'package:flutter/material.dart';

import 'widgets/most_popular.dart';
import 'widgets/travel_blog.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              "Travel Blog",
              style: TextStyle(fontSize: 36),
            ),
          ),
          Expanded(
            flex: 2,
            child: generateTravelBlog(),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most popular",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "View more",
                  style: TextStyle(fontSize: 16, color: Colors.deepOrange),
                ),
              ],
            ),
          ),
          Expanded(flex: 1, child: MostPopular()),
        ],
      ),
    );
  }
}
