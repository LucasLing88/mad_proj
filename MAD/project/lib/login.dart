import 'package:flutter/material.dart';
//import 'home.dart';
import 'register.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.orange[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('Welcome to SG Bus Secure!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
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
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.blue),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.pink,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              /*Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );*/
            },
            color: Colors.lightBlue,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Login',
                style: TextStyle(fontSize: 20,)
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
            child: Text('Do not have an account? Sign up now!',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Register()),
              );
            },
            color: Colors.yellowAccent,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Sign Up',
                style: TextStyle(fontSize: 20,)
              ),
            ),
          ),
        ],
      ),
    );
  }
}