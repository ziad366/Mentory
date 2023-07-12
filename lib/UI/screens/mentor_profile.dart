import 'package:flutter/material.dart';
import '../widgets/custom_avatar.dart';

class MentorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: CustomAvatar(imgURL: 'assets/images/profimg.jpg'),
            ),
            SizedBox(height: 15.0),
            Text(
              'Ahmed mohamed',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Start Chatting'),
                  ),
                ),
                SizedBox(width: 25.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('achadule session'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            dataCard(
              disc: 'Total Earning money',
              val: '\$500',
            ),
            dataCard(
              disc: 'Total spending hours',
              val: '20 Hr',
            ),
            dataCard(
              disc: 'Last mentoring Date',
              val: '2023-07-05',
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'areas of proficiency',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(
                      'Marketing, Web Development, Project Management',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 32.0),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Short Bio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'I am a recent college graduate looking to gain experience in the marketing industry.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Education',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Bachelor of Science in Marketing, University of XYZ, 2023',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }

  Container dataCard({required String disc, required String val}) {
    return Container(
      width: 300,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  disc,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Center(
                child: Text(
                  val,
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
