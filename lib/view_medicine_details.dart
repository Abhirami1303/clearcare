import 'package:flutter/material.dart';

class ViewMedicineDetailsPage extends StatefulWidget {
  @override
  _ViewMedicineDetailsPageState createState() =>
      _ViewMedicineDetailsPageState();
}

class _ViewMedicineDetailsPageState extends State<ViewMedicineDetailsPage> {
  List<Map<String, dynamic>> medicineDetails = [
    {
      'SI.No': 1,
      'Medicine Name': 'Medicine A',
      'Expiry Date': '2024-04-01',
      'Quantity': 10
    },
    {
      'SI.No': 2,
      'Medicine Name': 'Medicine B',
      'Expiry Date': '2024-05-15',
      'Quantity': 15
    },
    // Add more initial data as needed
  ];

  TextEditingController serialNumberController = TextEditingController();
  TextEditingController medicineNameController = TextEditingController();
  TextEditingController expiryDateController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  bool isEditing = false;
  int editingIndex = -1;

  void editMedicine(int index) {
    setState(() {
      isEditing = true;
      editingIndex = index;
      serialNumberController.text = medicineDetails[index]['SI.No'].toString();
      medicineNameController.text = medicineDetails[index]['Medicine Name'];
      expiryDateController.text = medicineDetails[index]['Expiry Date'];
      quantityController.text = medicineDetails[index]['Quantity'].toString();
    });
  }

  void updateMedicine() {
    setState(() {
      int serialNumber = int.tryParse(serialNumberController.text) ?? 0;
      String medicineName = medicineNameController.text;
      String expiryDate = expiryDateController.text;
      int quantity = int.tryParse(quantityController.text) ?? 0;

      medicineDetails[editingIndex] = {
        'SI.No': serialNumber,
        'Medicine Name': medicineName,
        'Expiry Date': expiryDate,
        'Quantity': quantity,
      };

      isEditing = false;
      editingIndex = -1;

      // Clear text controllers
      serialNumberController.clear();
      medicineNameController.clear();
      expiryDateController.clear();
      quantityController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'View medicines',
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
        itemCount: medicineDetails.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(medicineDetails[index]['Medicine Name']),
              subtitle: Text(
                  'SI.No: ${medicineDetails[index]['SI.No']} \nExpiry Date: ${medicineDetails[index]['Expiry Date']} \nQuantity: ${medicineDetails[index]['Quantity']}'),
              trailing: IconButton(
                icon: Icon(Icons.edit),
                tooltip: 'Edit',
                onPressed: () => editMedicine(index),
              ),
            ),
          );
        },
      ),
      bottomSheet: isEditing
          ? Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: serialNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'SI.No'),
                  ),
                  TextField(
                    controller: medicineNameController,
                    decoration: InputDecoration(labelText: 'Medicine Name'),
                  ),
                  TextField(
                    controller: expiryDateController,
                    decoration: InputDecoration(labelText: 'Expiry Date'),
                  ),
                  TextField(
                    controller: quantityController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Quantity'),
                  ),
                  ElevatedButton(
                    onPressed: updateMedicine,
                    child: Text('Update'),
                  ),
                ],
              ),
            )
          : null,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: serialNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'SI.No'),
                  ),
                  TextField(
                    controller: medicineNameController,
                    decoration: InputDecoration(labelText: 'Medicine Name'),
                  ),
                  TextField(
                    controller: expiryDateController,
                    decoration: InputDecoration(labelText: 'Expiry Date'),
                  ),
                  TextField(
                    controller: quantityController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Quantity'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      int serialNumber =
                          int.tryParse(serialNumberController.text) ?? 0;
                      String medicineName = medicineNameController.text;
                      String expiryDate = expiryDateController.text;
                      int quantity = int.tryParse(quantityController.text) ?? 0;

                      medicineDetails.insert(0, {
                        'SI.No': serialNumber,
                        'Medicine Name': medicineName,
                        'Expiry Date': expiryDate,
                        'Quantity': quantity,
                      });

                      Navigator.pop(context);
                    },
                    child: Text('Add'),
                  ),
                ],
              ),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
