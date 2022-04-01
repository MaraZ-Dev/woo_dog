import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

String about =
    'Alex has loved dogs since childhood. He is currently a veterinary student. Visits the dog shelter we...';

// The Numbers on the first Page
class Numbering extends StatelessWidget {
  final String number;
  final Color color;
  final Color textColor;
  const Numbering(
      {required this.number, required this.color, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      child: Center(
          child: Text(
        number,
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 15.0, color: textColor),
      )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: color,
      ),
    );
  }
}

// The Dash between the Numbers on the First Page
class Dash extends StatelessWidget {
  const Dash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(2.0),
      child: Icon(
        FontAwesomeIcons.minus,
        color: Colors.white,
        size: 15,
      ),
    );
  }
}

// The Button for The App
class CustomizedButton extends StatelessWidget {
  String text;
  Function() onPressed;

  CustomizedButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 325.0,
        height: 60.0,
        decoration: BoxDecoration(
            gradient: kbuttonColour, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// The TextBox
class TextBox extends StatelessWidget {
  String description;
  bool showText;

  TextBox({required this.description, required this.showText});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 60,
      child: TextField(
        obscureText: showText,
        decoration: InputDecoration(
            label: Text(description),
            labelStyle: TextStyle(color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            floatingLabelStyle: TextStyle(height: 5, color: Colors.grey),
            alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true,
            hintStyle: const TextStyle(fontSize: 18.0),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12.0)))),
      ),
    );
  }
}

// The Password TextField
class PasswordBox extends StatefulWidget {
  const PasswordBox({Key? key}) : super(key: key);

  @override
  State<PasswordBox> createState() => _PasswordBoxState();
}

class _PasswordBoxState extends State<PasswordBox> {
  late bool showText = true;
  late IconData iconVisible = FontAwesomeIcons.eyeSlash;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 325,
      height: 60,
      child: TextField(
        obscureText: showText,
        decoration: InputDecoration(
            label: const Text('Password'),
            suffix: IconButton(
              onPressed: () {
                setState(() {
                  if (iconVisible == FontAwesomeIcons.eyeSlash) {
                    showText = false;
                    iconVisible = FontAwesomeIcons.eye;
                  } else {
                    showText = true;
                    iconVisible = FontAwesomeIcons.eyeSlash;
                  }
                });
              },
              icon: Icon(
                iconVisible,
                color: kSignDesc,
                size: 15,
              ),
            ),
            labelStyle: TextStyle(color: Colors.grey),
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            floatingLabelStyle: TextStyle(height: 5, color: Colors.grey),
            alignLabelWithHint: true,
            fillColor: Colors.grey[300],
            filled: true,
            hintStyle: const TextStyle(fontSize: 18.0),
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12.0)))),
      ),
    );
  }
}

// Button on the DashBoard
class HomeButton extends StatelessWidget {
  String text;
  Function() onPressed;

  HomeButton({required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 105.0,
        height: 40.0,
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            gradient: kbuttonColour, borderRadius: BorderRadius.circular(15.0)),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 12,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              //textAlign: TextAlign.center,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.white),
            ),
          ],
        )),
      ),
    );
  }
}

// The FilterBox TextField
class FilterBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 45,
      child: TextField(
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            //hintText: 'Kiyv, Ukraine',
            //label: Text('Kiyv, Ukraine'),
            labelText: 'Kiyv, Ukraine',
            prefixIcon:
                Icon(FontAwesomeIcons.locationDot, color: kSignDesc, size: 15),
            suffixIcon:
                Icon(FontAwesomeIcons.arrowUp19, color: kSignDesc, size: 15),
            alignLabelWithHint: false,
            fillColor: Colors.grey[300],
            filled: true,
            //hintStyle: TextStyle(fontSize: 18.0),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12.0)))),
      ),
    );
  }
}

// WalkerProfile Card
class WalkerCard extends StatelessWidget {
  Image userIMage;
  String userName;
  int distance;
  int pricePerHour;

  WalkerCard(
      {required this.userIMage,
      required this.userName,
      required this.distance,
      required this.pricePerHour});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 30),
          width: 180,
          height: 125,
          child: userIMage,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 12,
                        color: kSignDesc,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '$distance km away from you',
                        style: const TextStyle(color: kSignDesc, fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(width: 20),
              Container(
                width: 50,
                height: 25,
                decoration: BoxDecoration(
                    color: kPriceContainer,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    '\$$pricePerHour/h',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

// Section Divider
class SectionDivider extends StatelessWidget {
  const SectionDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 50,
      thickness: 1,
      indent: 10,
      endIndent: 10,
      color: Color(0xFFB0B0B0),
    );
  }
}

// The About, Location and Reviews Button
class UserInfoButton extends StatelessWidget {
  Function() onPressed;
  String text;
  Color buttonColor;
  Color textColor;

  UserInfoButton(
      {required this.onPressed,
      required this.text,
      required this.textColor,
      required this.buttonColor});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 20),
        width: 100,
        height: 45,
        decoration: BoxDecoration(
            color: buttonColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 15),
        )),
      ),
    );
  }
}

// The Vertical Divider used at the top of the Profile Button
class VerticalSectionDivider extends StatelessWidget {
  const VerticalSectionDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      color: kSignDesc,
      width: 20,
      thickness: 1,
    );
  }
}

// The User Properties Section
class UserProps extends StatelessWidget {
  String first;
  String second;

  UserProps({required this.first, required this.second});
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(children: [
      TextSpan(text: first, style: kBoldText),
      TextSpan(text: second, style: kDesc)
    ]));
  }
}
