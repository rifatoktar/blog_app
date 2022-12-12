import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'tabs/discover_tab.dart';
import 'tabs/profile_tab.dart';
import 'tabs/saved_tab.dart';
import 'tabs/ticket_tab.dart';
import 'theme/constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DiscoverTab(),
    SavedTab(),
    TicketTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: primaryColor,
            iconSize: 24,
            elevation: 0,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? SvgPicture.asset(
                        "assets/icons/discovery-fill.svg",
                        color: Colors.white,
                      )
                    : SvgPicture.asset(
                        "assets/icons/discovery.svg",
                        color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? SvgPicture.asset(
                        "assets/icons/bookmark-fill.svg",
                        height: 24,
                        color: Colors.white,
                      )
                    : SvgPicture.asset(
                        "assets/icons/bookmark.svg",
                        color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? SvgPicture.asset(
                        "assets/icons/ticket-fill.svg",
                        color: Colors.white,
                      )
                    : SvgPicture.asset(
                        "assets/icons/ticket.svg",
                        color: Colors.white,
                      ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 3
                    ? SvgPicture.asset(
                        "assets/icons/profile-fill.svg",
                        color: Colors.white,
                      )
                    : SvgPicture.asset(
                        "assets/icons/profile.svg",
                        color: Colors.white,
                      ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
