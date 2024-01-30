import 'package:flutter/material.dart';

class OutingPassPage extends StatefulWidget {
  @override
  _OutingPassPageState createState() => _OutingPassPageState();
}

class _OutingPassPageState extends State<OutingPassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Outing Pass Request'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Text(
              'Request an Outing Pass',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Date',
                border: OutlineInputBorder(),
              ),
              // You can add date picker functionality here.
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Time In',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Time Out',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Place',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Going With',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Parent Contact Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 12.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Room Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle the outing pass request submission.
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Button color
                onPrimary: Colors.white, // Text color
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              child: Text(
                'Submit Request',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
