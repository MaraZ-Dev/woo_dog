import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'numbering.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/pic2.png'),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xAFC4C4C4),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const Icon(
                            FontAwesomeIcons.xmark,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Color(0xAFC4C4C4),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text('Verified', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                            SizedBox(width: 5,),
                            Icon(
                              FontAwesomeIcons.solidSquareCheck,
                              color: Colors.white, size: 20,)
                          ],
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(25)),
                      color: Colors.white),
                  child: Column(
                    children: [
                      const Text(
                        "Alex Murray",
                        style: kHeadingStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              UserProps(
                                first: '5\$',
                                second: '/hr',
                              ),
                              const VerticalSectionDivider(),
                              UserProps(
                                first: '10',
                                second: ' km',
                              ),
                              const VerticalSectionDivider(),
                              Row(
                                children: const [
                                  Text(
                                    '4.4',
                                    style: kBoldText,
                                  ),
                                  Icon(
                                    Icons.star_rounded,
                                    color: kSignDesc,
                                    size: 15,
                                  )
                                ],
                              ),
                              const VerticalSectionDivider(),
                              UserProps(first: '450', second: ' walks')
                            ],
                          ),
                        ),
                      ),
                      const SectionDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          UserInfoButton(
                            onPressed: () {},
                            text: 'About',
                            buttonColor: kPriceContainer,
                            textColor: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          UserInfoButton(
                            onPressed: () {},
                            text: 'Location',
                            buttonColor: const Color(0xFFF5F5F5),
                            textColor: const Color(0xFFB0B0B0),
                          ),
                          const SizedBox(width: 10),
                          UserInfoButton(
                            onPressed: () {},
                            text: 'Reviews',
                            buttonColor: const Color(0xFFF5F5F5),
                            textColor: const Color(0xFFB0B0B0),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Age',
                                style: kDesc,
                              ),
                              Text(
                                '30 Years',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 45,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Experience',
                                style: kDesc,
                              ),
                              Text(
                                '11 Months',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 20),
                                  width: 280,
                                  height: 60,
                                  child: Text(
                                    about,
                                    textAlign: TextAlign.left,
                                    style:
                                    const TextStyle(fontSize: 15, color: Color(0xFF7A7A7A)),
                                  )),
                              GestureDetector(
                                onTap: () {},
                                child: const Text('Read More', style: TextStyle(color: Color(0xFFFB724C), fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CustomizedButton(text: 'Check Schedule', onPressed: () {})
                    ],
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}


