import 'package:flutter/material.dart';
import 'constants.dart';
import 'numbering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'user_profile.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(height: 30),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Explore Dog walkers",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: kSignDesc,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 5),
                    child: HomeButton(text: 'Book a walk', onPressed: () {}),
                  )
                ],
              ),
              const SizedBox(height: 25.0),
              FilterBox(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Near you",
                      style: kHeadingStyle,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 20, decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'UserProfile');
                      },
                      child: WalkerCard(
                        userIMage: Image.asset('images/pic1.png'),
                        distance: 10,
                        pricePerHour: 5,
                        userName: 'Alex Murray',
                      ),
                    ),
                    WalkerCard(
                        userIMage: Image.asset('images/pic3.png'),
                        userName: 'Mark Green',
                        distance: 14,
                        pricePerHour: 5)
                  ],
                ),
              ),
              const SectionDivider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Suggested",
                      style: kHeadingStyle,
                    ),
                    Text(
                      "View all",
                      style: TextStyle(
                          fontSize: 20, decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WalkerCard(
                      userIMage: Image.asset('images/pic3.png'),
                      distance: 2,
                      pricePerHour: 5,
                      userName: 'Mark Greene',
                    ),
                    WalkerCard(
                        userIMage: Image.asset('images/pic1.png'),
                        userName: 'Trina Kain',
                        distance: 4,
                        pricePerHour: 6)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house, size: 15), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.peopleGroup, size: 15), label: 'Moments'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.paperPlane, size: 15), label: 'Chats'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user, size: 15), label: 'Profile')
        ],
      ),
    );
  }
}
