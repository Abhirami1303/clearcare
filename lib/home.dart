// import 'package:flutter/material.dart';
// import 'package:clearcare/add_medicine.dart'; // Import your add medicine page file
// import 'package:clearcare/view_medicine_details.dart'; // Import your view medicine details page file
// import 'package:clearcare/add_family.dart';
// import 'package:clearcare/view_family_details.dart';
// // Import your add family page file

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Home',
//           style: TextStyle(
//             fontFamily: 'Courier New',
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Color(0xFF6899CA), // Calming blue color
//         elevation: 0, // Remove app bar shadow
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFEAAA), // Light gray
//               Color.fromARGB(255, 253, 253, 253), // Slightly darker gray
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 133, 170, 206), // Pastel blue
//                   elevation: 5,
//                   minimumSize:
//                       Size(double.infinity, 50), // Rectangular button size
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0), // No corner radius
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => AddMedicinePage()),
//                   );
//                 },
//                 child: Text(
//                   'Add Medicine',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 10), // Decreased vertical spacing
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 84, 142, 200), // Pastel blue
//                   elevation: 5,
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ViewMedicineDetailsPage(),
//                     ),
//                   );
//                 },
//                 child: Text(
//                   'View Medicine Details',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 10), // Decreased vertical spacing
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 44, 129, 213), // Pastel blue
//                   elevation: 5,
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => AddFamilyPage()),
//                   );
//                 },
//                 child: Text(
//                   'Add Family',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               SizedBox(height: 10),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 28, 122, 216), // Pastel blue
//                   elevation: 5,
//                   minimumSize:
//                       Size(double.infinity, 50), // Rectangular button size
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0), // No corner radius
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => ViewFamilyMembersPage()),
//                   );
//                 },
//                 child: Text(
//                   'View Family Member Details',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:clearcare/sign_in.dart';
// import 'package:flutter/material.dart';
// import 'package:clearcare/add_medicine.dart';
// import 'package:clearcare/view_medicine_details.dart';
// import 'package:clearcare/add_family.dart';
// import 'package:clearcare/view_family_details.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Home',
//           style: TextStyle(
//             fontFamily: 'Courier New',
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Color(0xFF6899CA),
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFEAAA),
//               Color.fromARGB(255, 253, 253, 253),
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               // Existing buttons
//               SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   primary: Color.fromARGB(255, 200, 200, 200),
//                   elevation: 5,
//                   minimumSize: Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                 ),
//                 onPressed: () {
//                   _showLogoutConfirmation(context);
//                 },
//                 child: Text(
//                   'Logout',
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void _showLogoutConfirmation(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Logout Confirmation'),
//           content: Text('Are you sure you want to logout?'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => SignInPage()),
//                 );
//               },
//               child: Text('Logout'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'package:clearcare/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:clearcare/add_medicine.dart';
import 'package:clearcare/view_medicine_details.dart';
import 'package:clearcare/add_family.dart';
import 'package:clearcare/view_family_details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
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
              Color(0xFFEAAA),
              Color.fromARGB(255, 253, 253, 253),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Existing buttons
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 133, 170, 206),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddMedicinePage()),
                  );
                },
                child: Text(
                  'Add Medicine',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 84, 142, 200),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewMedicineDetailsPage(),
                    ),
                  );
                },
                child: Text(
                  'View Medicine Details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 44, 129, 213),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddFamilyPage()),
                  );
                },
                child: Text(
                  'Add Family',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 28, 122, 216),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ViewFamilyMembersPage()),
                  );
                },
                child: Text(
                  'View Family Member Details',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 200, 200, 200),
                  elevation: 5,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                onPressed: () {
                  _showLogoutConfirmation(context);
                },
                child: Text(
                  'Logout',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout Confirmation'),
          content: Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
              child: Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}
