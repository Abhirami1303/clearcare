import 'package:clearcare/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:clearcare/sign_in.dart';
import 'package:clearcare/sign_up.dart';
import 'package:clearcare/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clear Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/signin', // Set the initial route to the sign-in page
      routes: {
        '/signin': (context) =>
            SignInPage(), // Define the route for the sign-in page
        '/signup': (context) =>
            SignUpPage(), // Define the route for the sign-up page
        '/home': (context) => HomePage(), // Define the route for the home page
      },
    );
  }
}
