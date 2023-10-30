import 'package:flutter/material.dart';

class CollegeCard extends StatelessWidget {
  final String collegeImage;
  final String collegeName;
  final double collegeFees;
  final String collegeLocation;

  CollegeCard({
    required this.collegeImage,
    required this.collegeName,
    required this.collegeFees,
    required this.collegeLocation,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
      margin: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                collegeImage,
                fit: BoxFit.cover,
                height: 200,
                width: double.infinity,
              ),
            ),
          ),
          ListTile(
            title: Text(collegeName, style: TextStyle(fontSize: 20)),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Location: $collegeLocation'),
                Text('Fees: ₹${collegeFees.toStringAsFixed(2)}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
