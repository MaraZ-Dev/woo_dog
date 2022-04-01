import 'package:flutter/material.dart';
import 'constants.dart';
import 'numbering.dart';
import 'sign_up.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x0fe5e5e5),
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
            'images/logoWD.png'
        ),
      ),*/
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Image.asset('images/onboarding.png')),
          Container(
            height: 557,
            decoration: const BoxDecoration(
              gradient: kGradient,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 16.0),
            child: Image.asset(
              'images/logoWD.png',
              width: 110,
              height: 110,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 240.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Numbering(
                        number: '1',
                        color: kOnboardingBackground,
                        textColor: Colors.black,
                      ),
                      Dash(),
                      Numbering(
                        number: '2',
                        color: kNumberOnColour,
                        textColor: Colors.white,
                      ),
                      Dash(),
                      Numbering(
                        number: '3',
                        color: kNumberOnColour,
                        textColor: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(22),
                child: const Center(
                  child: Text(
                    'Too tired to walk your dog? Let’s help you!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              CustomizedButton(
                text: 'Join Our Community',
                onPressed: () {
                  Navigator.pushNamed(context, 'SignUp');
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 95.0,
                  ),
                  const Text(
                    'Already a member?',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                            color: kSignIn,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}



