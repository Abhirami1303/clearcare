// //

// import 'package:flutter/material.dart';
// import 'package:clearcare/custom_textfield.dart';
// import 'package:clearcare/sign_in.dart';
// import 'package:clearcare/services/auth_services.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//   final AuthService authService = AuthService();

//   void () {
//     authService.signUpUser(
//       context: context,
//       email: emailController.text,
//       password: passwordController.text,
//       name: nameController.text,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             "Signup",
//             style: TextStyle(fontSize: 30),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.08),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             child: CustomTextField(
//               controller: nameController,
//               hintText: 'Enter your name',
//             ),
//           ),
//           const SizedBox(height: 20),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             child: CustomTextField(
//               controller: emailController,
//               hintText: 'Enter your email',
//             ),
//           ),
//           const SizedBox(height: 20),
//           Container(
//             margin: const EdgeInsets.symmetric(horizontal: 20),
//             child: CustomTextField(
//               controller: passwordController,
//               hintText: 'Enter your password',
//             ),
//           ),
//           const SizedBox(height: 40),
//           ElevatedButton(
//             onPressed: signupUser,
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Colors.blue),
//               textStyle: MaterialStateProperty.all(
//                 const TextStyle(color: Colors.white),
//               ),
//               minimumSize: MaterialStateProperty.all(
//                 Size(MediaQuery.of(context).size.width / 2.5, 50),
//               ),
//             ),
//             child: const Text(
//               "Sign up",
//               style: TextStyle(color: Colors.white, fontSize: 16),
//             ),
//           ),
//           SizedBox(height: MediaQuery.of(context).size.height * 0.1),
//           TextButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => SignInPage(),
//                 ),
//               );
//             },
//             child: const Text('Login User?'),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
//import 'package:clearcare/custom_textfield.dart';
import 'package:clearcare/sign_in.dart';
//import 'package:flutter/material.dart';
//import 'package:clearcare/home.dart'; // Import your home page file
import 'package:clearcare/services/auth_services.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => SignUpPage();
}

class SignUpPage extends State<SignupPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService authService = AuthService();

  void signupUser() {
    authService.signUpUser(
      context: context,
      email: emailController.text,
      password: passwordController.text,
      name: nameController.text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CLEAR CARE',
          style: TextStyle(
            fontFamily: 'Courier New',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF6899CA),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 234, 240, 245),
              Color.fromARGB(255, 212, 231, 241),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: nameController,
                  style: TextStyle(color: const Color.fromARGB(179, 10, 0, 0)),
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(color: Color.fromARGB(195, 0, 0, 0)),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: emailController,
                  style: TextStyle(color: const Color.fromARGB(179, 10, 0, 0)),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Color.fromARGB(195, 0, 0, 0)),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  controller: passwordController,
                  style: TextStyle(color: const Color.fromARGB(179, 10, 0, 0)),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color.fromARGB(195, 0, 0, 0)),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 255, 255, 255),
                    elevation: 5,
                  ),
                  onPressed: () {
                    signupUser();
                  },
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInPage()),
                    );
                  },
                  child: Text.rich(
                    TextSpan(
                      text: 'Already a user? ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign in here',
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
