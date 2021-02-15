import 'package:flutter/material.dart';
import 'register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget{
  Login(): super();

  @override
  StateDemo createState() => StateDemo();
}

class MyData{
  final String data;
  MyData(this.data);
}

class StateDemo extends State<Login>{
  String data = "";
  String nameKey = "_key_name";
  String welcome = "";
  String welcomeMsg = "";
  TextEditingController controller = TextEditingController();

  @override
  void initState(){
    super.initState();
    const MethodChannel('plugins.flutter.io/shared_preferences').setMockMethodCallHandler(
      (MethodCall methodcall) async{
        if(methodcall.method == 'getAll'){
          return{"flutter." + nameKey: ""};
        }
        return null;
      },
    );
    setData();
  }

  Future<bool> saveData() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey, controller.text);
  }

  Future<String> loadData() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }

  setData(){
    loadData().then((value){
      setState((){
        data = value;
        welcomeMsg = data + welcome;
      });
    });
  }

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
              controller: controller,
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
              saveData();
              setData();
              welcome = " has successfully logged in";
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
          SizedBox(height: 20,),
          Text(
            welcomeMsg,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ),
        ],
      ),
    );
  }
}