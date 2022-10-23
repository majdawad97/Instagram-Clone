import 'package:flutter/material.dart';
import 'package:instagram_ui/utilities/bubble_stories.dart';
import 'package:instagram_ui/utilities/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = ['majd', 'milad', 'maha', 'terez', 'hamid', 'nai'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram'),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.add),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.favorite),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.share),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 100,
            child: ListView.builder(
                itemCount: people.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return BubbleStories(
                    text: people[index],
                  );
                }),
          ),

          // POSTS

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return UserPosts(name: people[index]);
              },
              itemCount: people.length,
            ),
          ),
        ],
      ),
    );
  }
}
