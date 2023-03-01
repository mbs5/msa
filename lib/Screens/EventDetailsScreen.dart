import 'package:flutter/material.dart';

import '../Model/events.dart';
import '../Sections/EventDetailPage/EventBody.dart';
import '../Sections/EventDetailPage/EventCover.dart';

class EventsDetailScreen extends StatelessWidget {
  EventsDetailScreen({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          color: Colors.white,
          child: Stack(
            children: [
              EventDetailCover(event: event),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.30,
                child: EventBody(
                  event: event,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
