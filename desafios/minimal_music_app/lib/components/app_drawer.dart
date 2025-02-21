import 'package:flutter/material.dart';
import 'package:minimal_music_app/pages/settings_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Logo
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.music_note_outlined,
                  size: 40,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            // Home tile
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home_outlined),
              onTap: () => Navigator.pop(context),
            ),
            // settings tile
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings_outlined),
              onTap: () {
                // pop drawe
                Navigator.pop(context);

                // Navigate to settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
