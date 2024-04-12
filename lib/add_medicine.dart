// import 'package:flutter/material.dart';

// class AddMedicinePage extends StatelessWidget {
//   final TextEditingController medicineNameController = TextEditingController();
//   final TextEditingController dosageController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Add Medicine',
//           style: TextStyle(
//             fontFamily: 'Courier New',
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         backgroundColor: Color(0xFF6899CA), // London Square
//         elevation: 0,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color.fromARGB(255, 254, 245, 245), // Coral Garden
//               Color.fromARGB(255, 248, 246, 246), // Astronomican Gray
//             ],
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//           ),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 TextField(
//                   controller: medicineNameController,
//                   decoration: InputDecoration(
//                     labelText: 'Medicine Name',
//                     labelStyle:
//                         TextStyle(color: const Color.fromARGB(179, 9, 0, 0)),
//                     border: OutlineInputBorder(),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: const Color.fromARGB(255, 9, 0, 0)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   controller: dosageController,
//                   decoration: InputDecoration(
//                     labelText: 'Dosage',
//                     labelStyle:
//                         TextStyle(color: const Color.fromARGB(179, 16, 0, 0)),
//                     border: OutlineInputBorder(),
//                     focusedBorder: OutlineInputBorder(
//                       borderSide:
//                           BorderSide(color: const Color.fromARGB(255, 8, 0, 0)),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     primary: Color(0xFF1976D2), // Astronomican Gray
//                     elevation: 5,
//                     minimumSize: Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(0),
//                     ),
//                   ),
//                   onPressed: () {
//                     // Implement add medicine functionality
//                   },
//                   child: Text(
//                     'Add Medicine',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class AddMedicinePage extends StatefulWidget {
  @override
  _AddMedicinePageState createState() => _AddMedicinePageState();
}

class _AddMedicinePageState extends State<AddMedicinePage> {
  final TextEditingController medicineNameController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  late DateTime expiryDate = DateTime.now();
  List<String> medicineTimings = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Add Medicine',
          style: TextStyle(
            fontFamily: 'Courier New',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF6899CA), // London Square
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 254, 245, 245), // Coral Garden
              Color.fromARGB(255, 248, 246, 246), // Astronomican Gray
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
                  controller: medicineNameController,
                  decoration: InputDecoration(
                    labelText: 'Medicine Name',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(179, 9, 0, 0),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 9, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: quantityController,
                  decoration: InputDecoration(
                    labelText: 'Quantity',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(179, 16, 0, 0),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 8, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: expiryDate,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 10),
                    );
                    if (picked != null && picked != expiryDate) {
                      setState(() {
                        expiryDate = picked;
                      });
                    }
                  },
                  controller: TextEditingController(
                    text: '${expiryDate.month}/${expiryDate.year}',
                  ),
                  decoration: InputDecoration(
                    labelText: 'Expiry Date',
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(179, 16, 0, 0),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 8, 0, 0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    for (int i = 0; i < medicineTimings.length; i++)
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Medicine Time',
                                labelStyle: TextStyle(
                                  color: const Color.fromARGB(179, 16, 0, 0),
                                ),
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color.fromARGB(255, 8, 0, 0),
                                  ),
                                ),
                              ),
                              readOnly: true,
                              controller: TextEditingController()
                                ..text = medicineTimings[i],
                              onTap: () async {
                                TimeOfDay? selectedTime = await showTimePicker(
                                  context: context,
                                  initialTime: TimeOfDay.now(),
                                );
                                if (selectedTime != null) {
                                  setState(() {
                                    medicineTimings[i] =
                                        selectedTime.format(context);
                                  });
                                }
                              },
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () => setState(
                              () => medicineTimings.removeAt(i),
                            ),
                          ),
                        ],
                      ),
                    ElevatedButton(
                      onPressed: () => setState(() => medicineTimings.add('')),
                      child: Text('Add Timing'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF1976D2), // Astronomican Gray
                    elevation: 5,
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                  ),
                  onPressed: () {
                    // Implement add medicine functionality
                  },
                  child: Text(
                    'Add Medicine',
                    style: TextStyle(color: Colors.white),
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
