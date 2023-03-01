import 'package:flutter/material.dart';

import '../Components/TopBar.dart';
import '../Model/events.dart';
import '../Sections/EventsPage/EventCard.dart';
import '../constants.dart';
import 'EventScreen.dart';

class SavedEvents extends StatelessWidget {
  SavedEvents({required this.event});
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBar(
              centerText: "Saved Events",
              sideText: "",
            ),
            SizedBox(
              height: 20,
            ),
            // Saved Event Swap screen button
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 230, 230, 230),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Row(
                  children: [
                    //
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Upcoming",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Product Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: Center(
                        child: Text(
                          "Past Events",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Product Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: EventCard(
                event: popularEvents[0],
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventsScreen(),
                  ),
                );
              },
              child: Center(
                child: Container(
                  width: 270,
                  height: 60,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "More Events",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Product Sans',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
