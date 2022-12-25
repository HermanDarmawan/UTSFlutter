import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {

  final String companyName;
  final String jobTitle;
  final int hourlyRate;

  RecentJobCard(
      {
      required this.companyName, 
      required this.jobTitle, 
      required this.hourlyRate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.grey[100],
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(jobTitle, 
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ) ,),
              Text(companyName),
            ],
          ),
          Text(hourlyRate.toString()),
        ],),
      ),
    );
  }
}