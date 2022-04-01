import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:woo_dog_app/constants.dart';
import 'package:woo_dog_app/numbering.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(FontAwesomeIcons.arrowLeft),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Let's Start Here",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Fill in your details to begin",
                  style: TextStyle(
                    //fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kSignDesc,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextBox(
                      description: 'Full Name',
                      showText: false,
                    ),
                    const SizedBox(height: 25),
                    TextBox(
                      description: 'E-mail',
                      showText: false,
                    ),
                    const SizedBox(height: 25),
                    // Password Field
                    PasswordBox(),
                    const SizedBox(height: 25),
                    CustomizedButton(
                      text: 'Sign Up',
                      onPressed: () {
                        Navigator.pushNamed(context, 'DashBoard');
                      },
                    ),
                    const SizedBox(height: 120),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                            style: TextStyle(
                                color: kSignDesc,
                                fontFamily: 'Poppins'
                            ),
                            children: [
                              TextSpan(
                                  text: 'By signing in, I agree with '
                              ),
                              TextSpan(
                                  text: 'Terms of use ',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              TextSpan(
                                  text: 'and '
                              ),
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            ]
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


