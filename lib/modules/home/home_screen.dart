// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[400],
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('My test'),
        actions: const [
          Icon(Icons.notifications),
          Icon(Icons.search),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(25))),
                  child: Image(
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(10),
                  width: 300,
                  color: Colors.black.withOpacity(0.7),
                  child: Text(
                    'Flower',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
