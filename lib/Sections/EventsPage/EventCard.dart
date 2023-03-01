import 'package:flutter/material.dart';
import 'package:msa/main.dart';

import '../../Components/AddBookmark.dart';
import '../../Components/CardDate.dart';
import '../../Model/events.dart';
import '../../Screens/EventDetailsScreen.dart';
import '../../constants.dart';

class EventCard extends StatelessWidget {
  EventCard({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Section Title (Popular Events)

        Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 20,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EventsDetailScreen(
                    event: event,
                  ),
                  fullscreenDialog: true,
                ),
              );
            },
            child: Container(
              height: 260,
              width: 260,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset(0, 4),
                    blurRadius: 18,
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Event Card Header
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        width: 260,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(22),
                            topLeft: Radius.circular(22),
                          ),
                        ),
                        child: Column(
                          children: [
                            // Background Image
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(22),
                                  topLeft: Radius.circular(22)),
                              child: Image.asset(
                                'asset/images/${event.eventIllustration}',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Event Date Component
                      EventCardDate(
                        event: event,
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: EventBookmark(),
                      ),
                    ],
                  ),

                  // Event Card Footer
                  Container(
                    width: 260,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(22),
                        bottomRight: Radius.circular(22),
                      ),
                    ),
                    child: Column(
                      children: [
                        //Event Title
                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            top: 20,
                          ),
                          width: double.infinity,
                          child: Text(
                            event.eventTitle,
                            style: kTitle1Style,
                          ),
                        ),

                        //Event Location
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                'asset/icons/event_location.png',
                                color: kPrimaryColor,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  event.eventSubtitle,
                                  style: TextStyle(
                                    color: kSecondPrimaryColor,
                                    fontFamily: 'Product Sans',
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
