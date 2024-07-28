import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';
import 'package:whatsappproject/widgets/settings_page.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      padding: const EdgeInsets.all(10.0),
      color: webAppBarColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/8/85/Elon_Musk_Royal_Society_%28crop1%29.jpg',
                ),
                radius: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              const Text(
                'Rivaan Ranawat',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search, color: Colors.grey),
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
                    child: Text('View contact'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Media, links, and docs'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Search'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 4',
                    child: Text('Mute notification'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 5',
                    child: Text('Disappearing messages'),
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 6',
                    child: Text('Wallpaper'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()));
                    },
                  ),
                  PopupMenuItem<String>(
                    value: 'Option 7',
                    child: Text('More'),
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
