import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_app/like.dart';
import 'package:flutter_app/search.dart';
import 'package:flutter_app/util/job_card.dart';
import 'package:flutter_app/util/recent_job_card.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //App Bar
          // AppBar(),

          SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Text(
              'Account',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
          ),

          SizedBox(height: 20),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return RecentJobCard(
                    companyName: 'Title',
                    jobTitle: 'Web Designer',
                    hourlyRate: 10,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
          child: GNav(
              backgroundColor: Colors.black,
              color: Colors.white,
              activeColor: Colors.white,
              tabBackgroundColor: Colors.grey.shade900,
              gap: 15,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Search()));
                  },
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Like',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Like()));
                  },
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'Account',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Account()));
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
