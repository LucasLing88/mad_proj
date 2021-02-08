import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';
//import 'package:flutter/services.dart';

/*class Register extends StatefulWidget{
  Register(): super();

  @override
  StateDemo createState() => StateDemo();
}

class StateDemo extends State<Register>{
  String data = "";
  String nameKey = "_key_name";
  TextEditingController controller = TextEditingController();

  @override
  void initState(){
    super.initState();
    const MethodChannel('plugins.flutter.io/shared_preferences').setMockMethodCallHandler(
      (MethodCall methodcall) async{
        if(methodcall.method == 'getAll'){
          return{"flutter." + nameKey: "[ No Name Saved ]"};
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
      });
    });
  }
  */
class Register extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text('Register an Account',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              /*controller: controller,*/
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
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm Password',
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
          RaisedButton(
            onPressed: () {
              /*saveData();*/
            },
            color: Colors.yellowAccent,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: const Text('Register',
                style: TextStyle(fontSize: 20,)
              ),
            ),
          ),
        ]
      ),
    );
  }
}