import 'package:flutter/material.dart';
import '../../Screens/EventScreen.dart';
import '../../Screens/PrayersScreen.dart';
import '../../constants.dart';

class MenuHome extends StatelessWidget {
  const MenuHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 600,
          child: Text(
            "Menu",
            style: kTitleHomeSectionStyle,
            textAlign: TextAlign.left,
          ),
          padding: EdgeInsets.only(left: 20),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, top: 10),
          child: Row(
            children: [
              Container(
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: kMainPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrayersScreen(),
                      ),
                    );
                  }),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Image.asset('asset/icons/menu_prayers.png'),
                        ),
                        SizedBox(height: 40),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Prayers',
                              style: kCardTitleStyle,
                            ),
                            Text(
                              'Fajr in 20 mins',
                              style: kSubtitleStyle,
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EventsScreen(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                      child: Container(
                        width: 160,
                        height: 75,
                        decoration: BoxDecoration(
                          color: kMainPrimaryColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 12),
                              child: Image.asset('asset/icons/menu_search.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Events',
                                  style: kCardTitleStyle,
                                ),
                                Text(
                                  'Explore',
                                  style: kSubtitleStyle,
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 160,
                      height: 75,
                      decoration: BoxDecoration(
                        color: kMainPrimaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.only(right: 12),
                            child: Image.asset('asset/icons/menu_archive.png'),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Archives',
                                style: kCardTitleStyle,
                              ),
                              Text(
                                'Watch',
                                style: kSubtitleStyle,
                                textAlign: TextAlign.left,
                              ),
                            ],
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
      ],
    );
  }
}
