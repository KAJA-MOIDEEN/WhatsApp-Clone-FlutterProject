import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';
import 'package:whatsappproject/widgets/settings_page.dart';

import 'Status_Video.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/status/my_status.jpg'), // Placeholder image, replace with actual asset
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          title: Text('My status'),
          subtitle: Text('Tap to add status update'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Recent updates'),
        ),
        ...List.generate(10, (index) {
          return ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                    'assets/status/status_$index.jpg'), // Placeholder images, replace with actual assets
              ),
              title: Text('Status $index'),
              subtitle: Text('${index * 10} minutes ago'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            StatusVideo(index, 'Status $index')));
              });
        }),
      ],
    );
  }
}
