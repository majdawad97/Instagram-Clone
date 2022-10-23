import 'package:flutter/material.dart';
import 'package:instagram_ui/utilities/account_tab1.dart';
import 'package:instagram_ui/utilities/account_tab2.dart';
import 'package:instagram_ui/utilities/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // profile picture
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),

                    // number of posts , followers , following
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '374',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '556',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Name and bio
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Majd',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('IT Student'),
                    Text('Madridista'),
                    Text('Hakuna Matata'),
                    Text('21'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        child: Center(
                            child: Text(
                          'Edit Profile',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.person_add_outlined),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
                child: Text(
                  'Story Highlights',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Row(
                children: [
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                  BubbleStories(text: 'story1'),
                ],
              ),
              TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.grid_3x3_outlined),
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                  ),
                ],
              ),

              Expanded(
                child: TabBarView(
                  children: [
                    AccountTab1(),
                    AccountTab2(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
