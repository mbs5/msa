import 'package:flutter/material.dart';
import '../../constants.dart';

class EventAgenda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Agenda",
            style: kTitle1Style,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 80,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(74, 0, 0, 0),
                  offset: Offset(0, 5),
                  blurRadius: 19,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Agenda Name
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Recitation",
                      style: kHeadline3Style,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 2),
                      child: Icon(
                        Icons.verified,
                        color: Colors.blue,
                        size: 20,
                      ),
                    ),
                  ],
                ),

                // Agenda Time
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "10:30",
                    style: kSubtitleStyle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
