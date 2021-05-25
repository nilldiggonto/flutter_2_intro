import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int counter = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'nill';
    });

    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'this is bio';
    });

    print('$username- $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    // print('init state');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       counter += 1;
      //     });
      //   },
      //   child: Text('Counter is $counter'),
      // ),
    );
  }
}
