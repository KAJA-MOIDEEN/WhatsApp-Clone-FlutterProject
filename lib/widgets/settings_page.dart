import 'package:flutter/material.dart';
import 'package:whatsappproject/colors.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('KAJA MOIDEEN MK'),
            accountEmail: Text('kajamoideen3100@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/status/my_status.jpg'), // Replace with your image asset
            ),
            decoration:
                BoxDecoration(color: appBarColor // Change to your desired color
                    ),
          ),
          SettingsTile(
              icon: Icons.security,
              title: 'Account',
              subtitle: 'Security notifications, change number'),
          SettingsTile(
              icon: Icons.lock,
              title: 'Privacy',
              subtitle: 'Block contacts, disappearing messages'),
          SettingsTile(
              icon: Icons.person,
              title: 'Avatar',
              subtitle: 'Create, edit, profile photo'),
          SettingsTile(
              icon: Icons.favorite,
              title: 'Favorites',
              subtitle: 'Add, reorder, remove'),
          SettingsTile(
              icon: Icons.chat,
              title: 'Chats',
              subtitle: 'Theme, wallpapers, chat history'),
          SettingsTile(
              icon: Icons.notifications,
              title: 'Notifications',
              subtitle: 'Message, group & call tones'),
          SettingsTile(
              icon: Icons.storage,
              title: 'Storage and data',
              subtitle: 'Network usage, auto-download'),
          SettingsTile(
              icon: Icons.language,
              title: 'App language',
              subtitle: 'English (device\'s language)'),
          SettingsTile(
              icon: Icons.help,
              title: 'Help',
              subtitle: 'Help center, contact us, privacy policy'),
          SettingsTile(
              icon: Icons.person_add, title: 'Invite a friend', subtitle: ''),
          SettingsTile(icon: Icons.update, title: 'App updates', subtitle: ''),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Open Instagram'),
            onTap: () {
              // Add navigation or functionality here
            },
          ),
          ListTile(
            leading: Icon(Icons.camera_alt),
            title: Text('Open Facebook'),
            onTap: () {
              // Add navigation or functionality here
            },
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  SettingsTile({required this.icon, required this.title, this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle.isNotEmpty ? Text(subtitle) : null,
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }
}
