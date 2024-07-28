import 'package:flutter/material.dart';
import 'package:whatsappproject/widgets/settings_page.dart';

class DroupDown extends StatelessWidget {
  const DroupDown({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: PopupMenuButton<String>(
      icon: const Icon(Icons.more_vert, color: Colors.grey),
      onSelected: (String result) {
// Handle the selected option
        print(result);
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: 'Option 1',
          child: Text('New group'),
        ),
        const PopupMenuItem<String>(
          value: 'Option 2',
          child: Text('New broadcast'),
        ),
        const PopupMenuItem<String>(
          value: 'Option 3',
          child: Text('Linked devices'),
        ),
        const PopupMenuItem<String>(
          value: 'Option 4',
          child: Text('Starred messages'),
        ),
        const PopupMenuItem<String>(
          value: 'Option 5',
          child: Text('Payments'),
        ),
        PopupMenuItem<String>(
          value: 'Option 6',
          child: Text('Settings'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SettingsPage()));
          },
        ),
      ],
    ));
  }
}
