import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';
import 'package:whatsappproject/widgets/settings_page.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/status/my_status.jpg'),
            radius: 20,
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.comment, color: Colors.grey),
              ),
              PopupMenuButton<String>(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()));
                    },
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
