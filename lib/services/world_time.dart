import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String? location;
  String? time;
  String? flag;
  String? url;

  WorldTime(
      {this.time,
      required this.url,
      required this.flag,
      required this.location});

  Future<void> getTime() async {
    try {
      Response response =
          await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      // print(response.body);
      // print(response.statusCode);

      Map data = jsonDecode(response.body);
      // print(data);
      // print(data['title']);
      // print('ok');
      // print()

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      // print(datetime);
      // print(offset);
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      // print(now);
      // time = now.toString();
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('what error?: $e');
    }
    // print('$username- $bio');
    time = 'Server Error';
  }
}



// instance.getTime();
