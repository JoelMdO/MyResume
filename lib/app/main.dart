import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/loading_page/loading_screen_auto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoadingScreenAutoPlay(),
    );
  }
}
