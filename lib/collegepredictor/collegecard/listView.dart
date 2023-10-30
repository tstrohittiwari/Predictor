import 'package:flutter/material.dart';

import 'package:predictor/collegepredictor/collegecard/collegeCard.dart';


class CollegeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('College List'),
      ),
      body: ListView(
        children: [
          CollegeCard(
            collegeImage: 'assets/images/1.jpeg',
            collegeName: 'NIT Kurukshetra',
            collegeFees: 15000.0,
            collegeLocation: 'Haryana',
          ),
          CollegeCard(
            collegeImage: 'assets/images/2.jpeg',
            collegeName: 'IIT Delhi',
            collegeFees: 20000.0,
            collegeLocation: 'Uttar Pradesh',
          ),
          CollegeCard(
            collegeImage: 'assets/images/2.jpeg',
            collegeName: 'IIT Delhi',
            collegeFees: 20000.0,
            collegeLocation: 'Uttar Pradesh',
          ),
          CollegeCard(
            collegeImage: 'assets/images/2.jpeg',
            collegeName: 'IIT Delhi',
            collegeFees: 20000.0,
            collegeLocation: 'Uttar Pradesh',
          ),
          CollegeCard(
            collegeImage: 'assets/images/2.jpeg',
            collegeName: 'IIT Delhi',
            collegeFees: 20000.0,
            collegeLocation: 'Uttar Pradesh',
          ),
          CollegeCard(
            collegeImage: 'assets/images/2.jpeg',
            collegeName: 'IIT Delhi',
            collegeFees: 20000.0,
            collegeLocation: 'Uttar Pradesh',
          ),

        ],
      ),
    );
  }
}
