import 'package:flutter/material.dart';
import 'package:nft_marketplace/presentation/pages/start_page.dart';

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
      theme: ThemeData(
        fontFamily: 'Atyp',
      ),
      home: const StartPage(),
    );
  }
}