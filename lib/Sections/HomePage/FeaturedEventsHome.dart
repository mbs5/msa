import 'package:flutter/material.dart';

import '../../constants.dart';

class FeaturedEventsHome extends StatelessWidget {
  const FeaturedEventsHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 600,
          child: Text(
            'Featured Event',
            style: kTitleHomeSectionStyle,
            textAlign: TextAlign.left,
          ),
          padding: EdgeInsets.only(left: 20),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.0, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: kMainPrimaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "05",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Product Sans',
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      "MAR",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sheikh Omar Sulaiman",
                      style: kTitle2Style,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'asset/icons/event_location.png',
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "University of Houston",
                          style: TextStyle(
                            color: kSecondPrimaryColor,
                            fontFamily: 'Product Sans',
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                          ),
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
    );
  }
}
