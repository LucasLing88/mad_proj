import 'package:flutter/material.dart';

class BusStopInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Bus Stop Info'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Stop No',
              style: TextStyle(
                fontSize: 22,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text('54351',
                style: TextStyle(
                  fontSize: 20,
                )
              ),
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Text('Road',
              style: TextStyle(
                fontSize: 22,
                color: Colors.red[300],
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          Container(
            width: 300,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.orange[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text('Ang Mo Kio Ave 5',
                style: TextStyle(
                  fontSize: 20,
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}