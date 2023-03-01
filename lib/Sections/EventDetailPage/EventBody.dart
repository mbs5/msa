import 'package:flutter/material.dart';
import '../../Model/events.dart';
import 'EventAgenda.dart';
import 'EventBodyHead.dart';
import 'EventPrice.dart';

class EventBody extends StatelessWidget {
  EventBody({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          // Event Title, Time and Location info
          EventBodyHead(event: event),
          SizedBox(
            height: 30,
          ),
          EventAgenda(),
          SizedBox(
            height: 40,
          ),
          EventPrice(),
        ],
      ),
    );
  }
}
