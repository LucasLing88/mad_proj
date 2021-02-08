import 'package:flutter/material.dart';
import 'drawer.dart';
import 'login.dart';
import 'register.dart';
import 'home.dart';
import 'about.dart';
import 'profile.dart';
import 'search.dart';
import 'viewbuses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  String title = 'Home';
  int index = 2;
  List<Widget> list = [Register(), Login(), Home(), About(), Profile(), Search(), ViewBuses()];

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text(title),
        ),
        //body: Home(),
        //drawer: MyDrawer(),
        body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt){
          setState( (){index = i;
                        title = txt;
                        Navigator.pop(context);
                        });
          }
        ),
      ),
    );
  }
}