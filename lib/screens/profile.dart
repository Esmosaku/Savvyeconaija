import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String? _name;
  String? _email;
  late ImageProvider _profileImage = const AssetImage('assets/images/user iconprofileicon.jpgg');

  void _uploadImage() {
    // Code to upload image
    // For simplicity, we'll just use a default image
    setState(() {
      _profileImage = const AssetImage('assets/images/user iconprofileicon.jpg');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: _profileImage,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _uploadImage,
              child: const Text('Upload Image'),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(labelText: 'Email'),
              onChanged: (value) {
                setState(() {
                  _email = value;
                });
              },
            ),
           
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Code to save user profile
                // Here you can save the entered details to a database or perform any other actions
                print('Name: $_name, Email: $_email');
              },
              child: const Text('Save Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Profile(),
  ));
}