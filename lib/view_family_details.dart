import 'package:flutter/material.dart';

class ViewFamilyMembersPage extends StatefulWidget {
  @override
  _ViewFamilyMembersPageState createState() => _ViewFamilyMembersPageState();
}

class _ViewFamilyMembersPageState extends State<ViewFamilyMembersPage> {
  List<Map<String, dynamic>> familyMembers = [
    {
      'Name': 'John Doe',
      'Email': 'john.doe@example.com',
      'Phone Number': '+1234567890',
    },
    {
      'Name': 'Jane Doe',
      'Email': 'jane.doe@example.com',
      'Phone Number': '+9876543210',
    },
    // Add more family members as needed
  ];

  void editFamilyMember(int index) {
    // Implement edit functionality if needed (future enhancement)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View family',
          style: TextStyle(
            fontFamily: 'Courier New',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF6899CA),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(familyMembers[index]['Name']),
              subtitle: Text(
                'Email: ${familyMembers[index]['Email']}\nPhone Number: ${familyMembers[index]['Phone Number']}',
              ),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                tooltip: 'Edit',
                onPressed: () => editFamilyMember(index),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement functionality to add new family member (future enhancement)
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
