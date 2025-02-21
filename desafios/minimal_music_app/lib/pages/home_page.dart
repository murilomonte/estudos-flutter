import 'package:flutter/material.dart';
import 'package:minimal_music_app/components/app_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PLAYLIST')),
      drawer: AppDrawer(),
      body: Center(child: Text('OI')),
    );
  }
}
