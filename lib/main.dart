import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/Home/home_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      title: 'QR Code Scanner',
      home: const HomeView(),
    );
  }
}
