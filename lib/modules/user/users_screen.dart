// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/models/data_users_model.dart';

List<DataModel> users = [
  DataModel(id: 1, name: 'Muhanned alsoradi', phone: '05998191753'),
  DataModel(id: 2, name: 'kamal alsoradi', phone: '05998191753'),
  DataModel(id: 3, name: 'Haneen alsoradi', phone: '05998191753'),
  DataModel(id: 4, name: 'Raneem alsoradi', phone: '05998191753'),
  DataModel(id: 5, name: 'Mayar alsoradi', phone: '05998191753'),
  DataModel(id: 6, name: 'Mahmoud alsoradi', phone: '05998191753'),
  DataModel(id: 7, name: 'Mohammed alsoradi', phone: '05998191753'),
  DataModel(id: 8, name: 'Dina alsoradi', phone: '05998191753'),
];

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => buildUserItem(users[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsetsDirectional.only(start: 20.0),
          child: Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        itemCount: users.length,
      ),
    );
  }

  Widget buildUserItem(DataModel user) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30.0,
              child: Text(
                '${user.id}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
            SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '${user.name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 5.0),
                Text('${user.phone}'),
              ],
            )
          ],
        ),
      );
}
