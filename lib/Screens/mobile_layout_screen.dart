import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';
import 'package:whatsappproject/widgets/contacts_list.dart';
import 'package:whatsappproject/widgets/status_page.dart';
import 'package:whatsappproject/widgets/call_page.dart';
import 'package:whatsappproject/widgets/community_page.dart';

import 'package:whatsappproject/widgets/settings_page.dart';

class MobileLayoutScreen extends StatelessWidget {
  const MobileLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: Colors.grey),
              onPressed: () {
                // Implement search functionality
              },
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
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
              Tab(text: 'Community')
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ContactsList(),
            StatusPage(),
            CallsPage(),
            CommunityPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implement new chat functionality
          },
          backgroundColor: tabColor,
          child: const Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
