import 'package:flutter/material.dart';

import '../../Model/events.dart';
import '../../constants.dart';

class EventBodyHead extends StatelessWidget {
  const EventBodyHead({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Event Title and Organizer name
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Event Title
              Text(
                event.eventTitle,
                style: kLargeTitleStyle,
              ),
              SizedBox(
                height: 5,
              ),
              // Event Oraganizer
              Text(
                "by UH MSA",
              )
            ],
          ),
        ),

        // Event Clock Icon, Date, Save Event to Calender
        Padding(
          padding: EdgeInsets.only(left: 20, top: 30),
          child: Column(
            children: [
              Row(
                children: [
                  // Event Clock Icon
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kMainPrimaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset('asset/icons/event_clock.png'),
                  ),
                  //Event Date and Time
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dec 10, 2023",
                          style: kSubtitle1Style,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "08:00pm - 10:00pm",
                          style: kHeadline3Style,
                        )
                      ],
                    ),
                  ),
                  // Save Event in Calender Button
                  Padding(
                    padding: EdgeInsets.only(
                      left: 60,
                      right: 20,
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kShadowColor,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'asset/icons/events_calender.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Event Location Icon, City/State, Venue, Directions
        Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  // Event Location Icon
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: kMainPrimaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Image.asset('asset/icons/event_location.png'),
                  ),

                  // Event City/State and Venue
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Houston, TX",
                          style: kSubtitle1Style,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "University of Houston",
                          style: kHeadline3Style,
                        )
                      ],
                    ),
                  ),

                  // Directions Button
                  Padding(
                    padding: EdgeInsets.only(
                      left: 50,
                      right: 20,
                    ),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: kShadowColor,
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'asset/icons/event_directions.png',
                        height: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
