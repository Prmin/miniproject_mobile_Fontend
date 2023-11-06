import 'package:flutter/material.dart';
import 'package:fortune_teller_app/screens/menu.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Fetch user profile data from your API and display it here
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("User Name"),
              accountEmail: Text("user@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage:
                    NetworkImage("https://example.com/user_profile.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_rounded),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MenuPage();
                }));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('User Profile Data'),
      ),
    );
  }
}
