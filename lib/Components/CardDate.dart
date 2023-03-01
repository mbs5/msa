import 'package:flutter/material.dart';

import '../Model/events.dart';
import '../constants.dart';

class EventCardDate extends StatelessWidget {
  EventCardDate({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        bottom: 20,
      ),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              event.eventDate,
              style: kTitle1Style,
            ),
            Text(
              event.eventMonth,
              style: TextStyle(
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
