import 'package:flutter/material.dart';

import '../Model/events.dart';
import '../Sections/EventsPage/EventCard.dart';

class PopularEventsList extends StatefulWidget {
  const PopularEventsList();

  @override
  State<PopularEventsList> createState() => _PopularEventsListState();
}

class _PopularEventsListState extends State<PopularEventsList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: popularEvents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : 5,
            ),
            child: Row(
              children: [
                EventCard(
                  event: popularEvents[index],
                ),
                SizedBox(
                  width: index == popularEvents.length - 1 ? 30 : 0,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
