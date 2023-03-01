import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:msa/Model/events.dart';

import '../../Screens/SavedEvents.dart';
import '../../constants.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 20.0,
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SavedEvents(
                          event: popularEvents[0],
                        ),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: kOutlineColor, width: 2),
                    ),
                    child: Image(
                      image: AssetImage('asset/icons/home_calender.png'),
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        child: Text(
                          "Salam",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF7F7F7F),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 6),
                      Container(
                        width: 100,
                        child: Text(
                          'Ashfaq',
                          style: kTitle1Style,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 120),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: PopupMenu(
                        menuList: [
                          const PopupMenuItem(
                            child: ListTile(
                              leading: Icon(
                                Icons.person,
                              ),
                              title: Text("My Profile"),
                            ),
                          ),
                          PopupMenuItem(
                            child: GestureDetector(
                              onTap: signUserOut,
                              child: ListTile(
                                leading: Icon(
                                  Icons.person,
                                ),
                                title: Text("Sign out"),
                              ),
                            ),
                          ),
                        ],
                        icon: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('asset/images/profile.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class PopupMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? icon;
  const PopupMenu({
    super.key,
    required this.menuList,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: ((context) => menuList),
      icon: icon,
      onSelected: (value) {},
    );
  }
}
