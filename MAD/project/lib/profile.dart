import 'package:flutter/material.dart';

class Profile extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Edit Profile',
              style: TextStyle(
                color: Colors.yellow,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 80,
              height: 80,
              child: CircleAvatar(
                backgroundImage: AssetImage('images/Komari.jpg'),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Username',
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, color: Colors.yellow),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle:
                      TextStyle(fontWeight: FontWeight.w300, color: Colors.yellow),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.yellow,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: () {},
              color: Colors.yellow[200],
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Save',
                  style: TextStyle(fontSize: 20,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}