import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final textColor = const Color(0xFF1d110c);
    final accentColor = const Color(0xFFa15f45);
    final tileBackground = const Color(0xFFfcf9f8);
    final iconBackground = const Color(0xFFf4eae6);

    Widget sectionHeader(String title) => Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 18,
              letterSpacing: -0.015,
            ),
          ),
        );

    Widget settingsTile(IconData icon, String title, String subtitle) => Container(
          color: tileBackground,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: iconBackground,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, color: textColor),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: accentColor,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: tileBackground,
        body: SafeArea(
          child: Column(
            children: [
              // Header with back arrow and title
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                color: tileBackground,
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back, color: Color(0xFF1d110c)),
                    const Spacer(),
                    Text(
                      'Settings',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),

              Expanded(
                child: ListView(
                  children: [
                    sectionHeader('Account'),
                    settingsTile(Icons.person, 'Profile', 'Manage your profile information'),
                    settingsTile(Icons.shield, 'Account Security', 'Manage your email and password'),

                    sectionHeader('Preferences'),
                    settingsTile(Icons.notifications, 'Notifications', 'Manage your notification settings'),
                    settingsTile(Icons.language, 'Language', 'Manage your app language'),

                    sectionHeader('App Settings'),
                    settingsTile(Icons.light_mode, 'Theme', 'Manage your app theme'),
                    settingsTile(Icons.storage, 'Data Usage', 'Manage your app data'),
                    settingsTile(Icons.lock, 'Permissions', 'Manage your app permissions'),

                    sectionHeader('Support'),
                    settingsTile(Icons.help, 'Help Center', 'Get help and support'),
                    settingsTile(Icons.mail, 'Contact Us', 'Contact us for assistance'),
                    settingsTile(Icons.info, 'About', 'Learn more about our app'),
                  ],
                ),
              ),

              // Bottom Navigation Bar (Simplified)
              BottomNavigationBar(
                selectedItemColor: accentColor,
                unselectedItemColor: accentColor,
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.work), label: 'My Jobs'),
                  BottomNavigationBarItem(icon: Icon(Icons.file_copy), label: 'Applications'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
