import 'package:flutter/material.dart';

class BusInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text('Bus Info'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text('Bus Route',
              style: TextStyle(
                fontSize: 25,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text('Punggol Interchange' + '\n' + 'to' + '\n' + 'Yishun Interchange',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ),
          SizedBox(height: 20),
          Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text('Yishun Interchange' + '\n' + 'to' + '\n' + 'Punggol Interchange',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
            )
          ),
        ],
      ),
    );
  }
}