import 'package:flutter/material.dart';

import '../../Components/SearchFieldWidget.dart';
import '../../constants.dart';

class EventsHeader extends StatelessWidget {
  const EventsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            decoration: BoxDecoration(
              color: kMainPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 4),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'Current Location',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Houston, TX",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Product Sans',
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SearchFieldWidget(),
      ],
    );
  }
}
