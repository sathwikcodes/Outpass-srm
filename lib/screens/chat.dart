import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'outing_pass_page.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  User? _user;
  Map<String, dynamic>? _userData;

  @override
  void initState() {
    super.initState();
    _getUserData();
  }

  Future<void> _getUserData() async {
    User? currentUser = _auth.currentUser;
    if (currentUser != null) {
      DocumentSnapshot userDocument =
          await _firestore.collection('users').doc(currentUser.uid).get();
      setState(() {
        _user = currentUser;
        _userData = userDocument.data() as Map<String, dynamic>?;
      });
    }
  }

  Future<void> _logout() async {
    await _auth.signOut();
    Navigator.of(context).pop();
  }

  void _navigateToOutingPassPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutingPassPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: _logout,
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 75.0,
                backgroundImage: NetworkImage(_userData?['image_url'] ?? ''),
              ),
              const SizedBox(height: 20.0),
              Text(
                _user != null
                    ? _userData!['username'] ?? 'User Name'
                    : 'User Name',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                _user != null ? _userData!['email'] ?? 'Email' : 'Email',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                _userData != null && _userData!.containsKey('otherDetails')
                    ? _userData!['otherDetails'] ?? 'Other Details'
                    : 'Other Details',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: _navigateToOutingPassPage,
                child: const Text('Outing Pass'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
