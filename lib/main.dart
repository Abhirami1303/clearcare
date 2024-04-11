// import 'package:clearcare/providers/user_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:clearcare/sign_in.dart';
// import 'package:clearcare/sign_up.dart';
// import 'package:clearcare/home.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(MultiProvider(providers: [
//     ChangeNotifierProvider(create: (_) => UserProvider()),
//   ], child: const MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Clear Care',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       initialRoute: '/signin', // Set the initial route to the sign-in page
//       routes: {
//         '/signin': (context) =>
//             const Signinpage(), // Define the route for the sign-in page
//         '/signup': (context) => const SignupPage(),
//         '/home': (context) => HomePage(), // Define the route for the home page
//       },
//     );
//   }
// }

import 'package:clearcare/providers/user_provider.dart';
import 'package:clearcare/services/auth_services.dart';
import 'package:flutter/material.dart';
//import 'package:clearcare/sign_in.dart';
import 'package:clearcare/sign_up.dart';
import 'package:clearcare/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    authService.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clear Care',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Provider.of<UserProvider>(context).user.token.isEmpty
          ? const SignupPage()
          : HomePage(),
    );
  }
}
