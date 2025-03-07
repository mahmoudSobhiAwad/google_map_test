import 'package:flutter/material.dart';
import 'package:google_map_test/map_sample.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LatLng? position;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () async {
              await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MapSample()))
                  .then((value) {
                if (value != null && value is LatLng) {
                  position = value;
                  setState(() {});
                }
              });
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color(0xffF4F4F4),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: position != null
                  ? Image.network(
                      "https://maps.googleapis.com/maps/api/staticmap?center=${position!.latitude},${position!.longitude}&zoom=12&size=600x400&markers=color:red|30.0444,31.2357&key=AIzaSyANmRv7qO9ky0zEmI57upMQWPflSXXvbHk")
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 12,
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 40,
                        ),
                        Text(
                          "Pick Location",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}
