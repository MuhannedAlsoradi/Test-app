// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {
  const MessangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey[300],
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
        title: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 22.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-6/278097263_1915463335472774_1520428944919852700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=K8WtlRrh03MAX8GbLR3&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-jSGkP-v7gCEhZ1HfM7W6mJaZqvpOHFHZtC5deIm4Zlw&oe=63217A38'),
                ),
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 9.5,
                  backgroundColor: Colors.red,
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(width: 10.0),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 22.0,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[300]),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5.0,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(height: 20.0),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => buildChatItem(),
                separatorBuilder: (context, index) => SizedBox(height: 10.0),
                itemCount: 30,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'calls'),
          BottomNavigationBarItem(
              icon: Icon(Icons.photo_album_outlined), label: 'stories'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'people')
        ],
      ),
    );
  }

  Widget buildStoryItem() => Container(
        width: 70.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 28.0,
                  backgroundImage: NetworkImage(
                      'https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-6/278097263_1915463335472774_1520428944919852700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=K8WtlRrh03MAX8GbLR3&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-jSGkP-v7gCEhZ1HfM7W6mJaZqvpOHFHZtC5deIm4Zlw&oe=63217A38'),
                ),
                CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                )
              ],
            ),
            Text(
              'Mohanad alsoradi',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(fontSize: 14),
            )
          ],
        ),
      );
  Widget buildChatItem() => Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 28.0,
                backgroundImage: NetworkImage(
                    'https://scontent.fgza9-1.fna.fbcdn.net/v/t39.30808-6/278097263_1915463335472774_1520428944919852700_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=K8WtlRrh03MAX8GbLR3&_nc_ht=scontent.fgza9-1.fna&oh=00_AT-jSGkP-v7gCEhZ1HfM7W6mJaZqvpOHFHZtC5deIm4Zlw&oe=63217A38'),
              ),
              CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.white,
              ),
              CircleAvatar(
                radius: 7.0,
                backgroundColor: Colors.green,
              )
            ],
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mohanad Alsoradi',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Hello everyone ! i\'m a software engineer',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                        height: 7.0,
                        width: 7.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Text(
                      '09:47 AM',
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
}
