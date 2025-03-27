import 'package:flutter/material.dart';
import 'screens/home_screen.dart';


void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}


