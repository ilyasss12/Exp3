import 'package:flutter/material.dart';

class User {
  final String name;
  final String email;
  final String bio;

  User({required this.name, required this.email, required this.bio});
}

class ProfilePage extends StatelessWidget {
  final User user;

  ProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${user.name}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Email: ${user.email}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              'Bio: ${user.bio}',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 32.0),
        child: FloatingActionButton(
          onPressed: () {
            // Define the action when the FAB is pressed
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Edit button pressed'),
              ),
            );
          },
          child: Icon(Icons.edit),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProfilePage(
      user: User(
        name: 'John Doe',
        email: 'john.doe@example.com',
        bio: 'Flutter enthusiast and developer.',
      ),
    ),
  ));
}
