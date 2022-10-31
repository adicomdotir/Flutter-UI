import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_ui/screens/home_screen.dart';
import 'package:flutter_ui/utilities/theme_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Helvetica'),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: ThemeColors.green,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Entypo.chevron_thin_left),
            onPressed: () {},
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(SimpleLineIcons.menu))
          ],
        ),
        body: const HomeScreen(),
      ),
    );
  }
}
