import 'package:flutter/material.dart';
import '../../constants.dart';

class HadithSection extends StatelessWidget {
  const HadithSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 15),
          child: Container(
            padding: EdgeInsets.all(10),
            width: 330,
            height: 110,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: kOutlineColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Text(
              "A person asked Allah's Messenger (ﷺ): What (sort of) deeds in or (what qualities of) Islam are good? He replied, To feed (the poor) and greet those whom you know and those",
              style: kSubtitleStyle,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Container(
            width: 60,
            height: 30,
            child: Text(
              'read all',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: kMainPrimaryColor,
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ),
      ],
    );
  }
}
