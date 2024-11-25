import 'package:flutter/material.dart';

import 'login_register_page.dart';
import 'loginpage.dart';
import 'registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     initialRoute: "/",
     routes: {
      "/":(context)=> LoginRegisterPage(),
      '/login':(context)=> LoginScreen(),
      '/register':(context)=>RegisterScreen(),
     },
    );
  }
}

