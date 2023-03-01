import 'package:flutter/material.dart';

import '../Lists/PopularEventsList.dart';
import '../Sections/EventsPage/EventsHeader.dart';
import '../constants.dart';

class EventsScreen extends StatefulWidget {
  @override
  State<EventsScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<EventsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            EventsHeader(),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 600,
              child: Text(
                "Popular Events",
                style: kTitle1Style,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PopularEventsList(),
          ],
        ),
      ),
    );
  }
}
