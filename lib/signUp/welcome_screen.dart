// ignore_for_file: unused_field

import 'package:bizs_app/signUp/create_new_account.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Welcome!",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Enter Your Credential To Access\n Your Account",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: SizedBox(
                          width: 223,
                          child: Image.asset(
                              'assets/images/main illustraion with border.png')),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
                Container(
                  height: 100.w,
                  decoration: const BoxDecoration(
                    color: Color(0xFFDEF6E5),
                    boxShadow: [
                      BoxShadow(color: Colors.black, spreadRadius: 1.5),
                    ],
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 30),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        const Text(
                          "Log In To Your Account",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          controller: _userNameController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            border: const OutlineInputBorder(),
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(.3),
                                fontSize: 14),
                            hintText: 'Username/Phone/E-mail',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          controller: _userNameController,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            border: const OutlineInputBorder(),
                            hintStyle: TextStyle(
                                color: Colors.black.withOpacity(.3),
                                fontSize: 14),
                            hintText: 'Password',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            alignment: Alignment.topRight,
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xFF038338)),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Stack(
                            children: <Widget>[
                              Positioned.fill(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: <Color>[
                                        Color(0xFF0AA84C),
                                        Color(0xFF25D365),
                                        // Color(0xFF42A5F5),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 100.w,
                                height: 38,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    textStyle: const TextStyle(fontSize: 16),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    'Log In',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don’t Have an Account? ",
                                style: TextStyle(
                                  fontSize: 11,
                                )),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const NewAccount()),
                                  );
                                },
                                child: const Text(
                                  "Sign up",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0AA84C)),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
