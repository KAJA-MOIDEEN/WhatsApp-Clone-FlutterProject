import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';

class StatusVideo extends StatelessWidget {
  final int index;
  final String name;
  const StatusVideo(this.index, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Display'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Background image
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/gifs/Video_$index.gif'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Content overlay
            Positioned(
              top: 16,
              left: 16,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$name',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Yesterday at 6:28 PM',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: Row(
                children: [
                  Icon(Icons.more_vert,
                      color: Colors.white), // Add relevant icons or emoji
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
