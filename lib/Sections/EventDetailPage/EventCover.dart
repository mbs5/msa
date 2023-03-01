import 'package:flutter/material.dart';

import '../../Model/events.dart';

class EventDetailCover extends StatelessWidget {
  EventDetailCover({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.35,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            image: AssetImage(
              'asset/images/${event.eventIllustration}',
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
