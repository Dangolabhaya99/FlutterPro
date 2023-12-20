import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              // You can replace the image with the user's profile picture
              //backgroundImage: AssetImage('assets/profile_picture.jpg'),
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'john.doe@email.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            // Add more user information or options as needed
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('123 Main St, Cityville'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+1 234 567 890'),
            ),
            // Add more ListTile widgets for additional information
          ],
        ),
      ),
    );
  }
}
