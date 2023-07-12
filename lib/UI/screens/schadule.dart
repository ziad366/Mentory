import 'package:flutter/material.dart';

class ScheduleScreen extends StatefulWidget {
  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();
  String? _title;
  String? _description;


  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Mentoring'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter date and time:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(
                hintText: 'Date (YYYY-MM-DD)',
              ),
              keyboardType: TextInputType.datetime,
              onChanged: (value) {},
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _timeController,
              decoration: InputDecoration(
                hintText: 'Time (HH:MM)',
              ),
              keyboardType: TextInputType.datetime,
              onChanged: (value) {},
            ),
            SizedBox(height: 32.0),
            Text(
              'Enter title and description:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Title',
              ),
              onChanged: (value) {
                setState(() {
                  _title = value;
                });
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Description',
              ),
              onChanged: (value) {
                setState(() {
                  _description = value;
                });
              },
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // TODO: Implement scheduling logic
              },
              child: Text('Schedule Mentoring'),
            ),
          ],
        ),
      ),
    );
  }
}