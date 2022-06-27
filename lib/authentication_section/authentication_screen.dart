import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

// Login Screen
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            image: DecorationImage(
              image: AssetImage('assets/img_three.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 255, 0.4), BlendMode.dstATop),
            ),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Login',
                    style: GoogleFonts.getFont('Alfa Slab One',
                        color: Colors.white, fontSize: 26.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Email ID",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.padlock_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4286F4)),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  const Center(
                    child: Text(
                      'Or Login with',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.google,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.facebook,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.twitter,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'New User ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegistrationScreen()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          'Register here',
                          style: TextStyle(
                            color: Color(0xFFE3CF18),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Registration Screen
class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            image: DecorationImage(
              image: AssetImage('assets/img_three.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 255, 0.4), BlendMode.dstATop),
            ),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Registration',
                    style: GoogleFonts.getFont('Alfa Slab One',
                        color: Colors.white, fontSize: 26.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Full name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Email ID",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.padlock_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    height: 50.0,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF4286F4)),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 18.0,
                  ),
                  const Center(
                    child: Text(
                      'Or Register with',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.google,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.facebook,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 80.0,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xFFD8D8D8).withOpacity(0.4)),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.twitter,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have a account ?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: const Text(
                          'Login here',
                          style: TextStyle(
                            color: Color(0xFFE3CF18),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// OTP Screen
class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            image: DecorationImage(
              image: AssetImage('assets/img_three.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(255, 255, 255, 0.4), BlendMode.dstATop),
            ),
          ),
          child: Form(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Verify your Identify',
                    style: GoogleFonts.getFont('Alfa Slab One',
                        color: Colors.white, fontSize: 26.0),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Full name",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      hintText: "Email ID",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.mail_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                      prefixIcon: Icon(
                        CupertinoIcons.padlock_solid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
