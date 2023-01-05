import 'package:flutter/material.dart';
import 'package:flutter3_test/src/screens/home_screen.dart';
import 'package:flutter3_test/src/shared/nav_bar.dart';

import 'src/shared/music_player.dart';
import 'src/shared/top_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
        // primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // var theme = Theme.of(context);

    return Scaffold(
      bottomNavigationBar: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          MusicPlayer(),
          NavBar(),
        ],
      ),
      extendBody: true,
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          TopAppBar(),
          SliverToBoxAdapter(
            child: HomeScreen(),
          ),
        ],
      ),
    );
  }
}
