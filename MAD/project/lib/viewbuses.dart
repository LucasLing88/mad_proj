import 'package:flutter/material.dart';
import 'businfo.dart';

class ViewBuses extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: <Widget>[
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('1N',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BPS1',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('NR1',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('2',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('2N',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('NR2',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('3',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('3A',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('3B',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('3N',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('NR3',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('4',
                  style: TextStyle(
                    fontSize: 20,
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}