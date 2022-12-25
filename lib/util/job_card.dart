import 'dart:ui';

import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final int hourlyRate;

  JobCard(
      {
      required this.companyName, 
      required this.jobTitle, 
      // required this.logo, 
      required this.hourlyRate});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 200,
          padding: EdgeInsets.all(12),
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(child: Text('Title',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              )),
            ],
            ),
            Text(jobTitle,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            Text(
              '\$' + hourlyRate.toString() + '/hr' ),
          ]),
        ),
      ),
    );
  }
}
