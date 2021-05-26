import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);
    String? bgImage;
    try {
      bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    } catch (e) {
      bgImage = 'assets/day.jpg';
    }
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/night.jpg'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(Icons.edit_location),
                  label: Text('Edit Location'),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
