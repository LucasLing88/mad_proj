import 'package:flutter/material.dart';
import 'busstopinfo.dart';

class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[200],
      resizeToAvoidBottomPadding: false,
      body: ListView(
        children: <Widget>[
          Card(
            child: new InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('NANYANG POLYTECHNIC',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BLK 453G',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('OPP BLK 566E',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('ANG MO KIO STN',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('OPP NANYANG POLY',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BEF NANYANG AVE',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BLK 338C',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('YIO CHU KANG INT',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('YIO CHU KANG STADIUM',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('OPP BLK 135D',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BISHAN PARK',
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
                  MaterialPageRoute(builder: (context) => BusStopInfo()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('BLK 433P',
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