import 'package:flutter/material.dart';
import 'package:provider_app/home_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_app/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Provider_Class(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home_Page(),
      ),
    );
  }
}
