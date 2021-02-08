import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => onTap(context, 2, 'Home'),
            ),
            ListTile(
              leading: Icon(Icons.list_alt),
              title: Text('About'),
              onTap: () => onTap(context, 3, 'About'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () => onTap(context, 4, 'Profile'),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Search for Nearby Bus Stop'),
              onTap: () => onTap(context, 5, 'Search for Nearby Bus Stop'),
            ),
            ListTile(
              leading: Icon(Icons.directions_bus),
              title: Text('View all Buses'),
              onTap: () => onTap(context, 6, 'View all Buses'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Login / Logout'),
              onTap: () => onTap(context, 1, 'Login / Logout'),
            ),
          ],
        ),
      ),
    );
  }
}