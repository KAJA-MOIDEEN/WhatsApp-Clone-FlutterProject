import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Define the colors used in the app
    const Color backgroundColor = Color(0xFF121212);
    const Color appBarColor = Color(0xFF1F1F1F);
    const Color tabColor = Colors.tealAccent;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: appBarColor,
        title: const Text(
          'Communities',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Colors.white),
            onPressed: () {
              // Implement QR code functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt, color: Colors.white),
            onPressed: () {
              // Implement camera functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Implement more options functionality
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: const Icon(Icons.group_add, color: Colors.white),
            ),
            title: const Text(
              'New community',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              // Implement new community functionality
            },
          ),
          Divider(color: Colors.grey[800]),
          CommunityItem(
            title: 'Random Access bank',
            subtitle: '',
            icon: Icons.group,
            isAnnouncement: false,
            time: '',
          ),
          Divider(color: Colors.grey[800]),
          CommunityItem(
            title: 'Announcements',
            subtitle: 'Gokul Appavu added the group "JUN...',
            icon: Icons.volume_up,
            isAnnouncement: true,
            time: '29/06/24',
          ),
          CommunityItem(
            title: 'MAY 24 FSD',
            subtitle: 'Rufus: This message was deleted',
            icon: Icons.group,
            isAnnouncement: false,
            time: 'Yesterday',
          ),
          CommunityItem(
            title: 'Dev Team',
            subtitle: 'Gokul Appavu: Okayy thaan...na quit...',
            icon: Icons.group,
            isAnnouncement: false,
            time: '30/06/24',
          ),
          ListTile(
            title: const Text(
              'View all',
              style: TextStyle(color: tabColor),
            ),
            onTap: () {
              // Implement view all functionality
            },
          ),
          Divider(color: Colors.grey[800]),
          CommunityItem(
            title: 'GoldenTouch Media By Shoiab',
            subtitle: 'Suhaib Sir Java: Dear Students, Greet...',
            icon: Icons.group,
            isAnnouncement: false,
            time: 'Yesterday',
          ),
          CommunityItem(
            title: 'Announcements',
            subtitle: 'Suhaib Sir Java: Dear Students, Greet...',
            icon: Icons.volume_up,
            isAnnouncement: true,
            time: 'Yesterday',
          ),
        ],
      ),
    );
  }
}

class CommunityItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final bool isAnnouncement;
  final String time;

  const CommunityItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.isAnnouncement,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: isAnnouncement ? Colors.green : Colors.grey,
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: Colors.white70),
      ),
      trailing: Text(
        time,
        style: const TextStyle(color: Colors.white70),
      ),
      onTap: () {
        // Implement community item tap functionality
      },
    );
  }
}
