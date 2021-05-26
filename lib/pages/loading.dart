import 'package:flutter/material.dart';
import '../services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String? time = 'loading';
  void setUpWorldTime() async {
    WorldTime instance =
        WorldTime(url: 'Asia/Dhaka', flag: 'dhaka.ong', location: 'Dahaka');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
    });
    // setState(() {
    //   time = instance.time;
    // });
  }

  @override
  void initState() {
    super.initState();
    setUpWorldTime();
    // getTime();
    // print('init state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time!),
      ),
    );
  }
}
