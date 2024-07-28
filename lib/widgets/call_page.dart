import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Favourites'),
        ),
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green,
            child: Icon(
              Icons.favorite,
              size: 25,
              color: Colors.white,
            ),
          ),
          title: Text('Add to Favourites'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Recent'),
        ),
        ...List.generate(10, (index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(
                  'assets/imgs/call_$index.jpg'), // Placeholder image, replace with actual asset
            ),
            title: Text('Gokul $index'),
            subtitle: Text('${index + 1} July, ${14 + index % 10}:46'),
            trailing: Icon(
              index % 2 == 0 ? Icons.call : Icons.call_received,
              color: Colors.green,
            ),
          );
        }),
      ],
    );
  }
}
