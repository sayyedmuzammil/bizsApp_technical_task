// ignore_for_file: file_names

import 'package:bizs_app/signUp/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class FillUserDetails extends StatelessWidget {
  FillUserDetails({Key? key}) : super(key: key);
  final _fnameController = TextEditingController();
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
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
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                      width: 248,
                      child: Image.asset(
                          'assets/images/main illustration 1 (1).png')),
                ),
              ],
            ),
            SizedBox(
              height: 5.5.h,
            ),
            Container(
              height: 57.h,    
              decoration: BoxDecoration(
                color: const Color(0xFFF5FFFA),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF0AA74B).withOpacity(.52),
                      spreadRadius: 1),
                ],
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                  children: [
                    
                    const Text(
                      "Please fill your real name it will help your known \npeople to find you on BizsApp",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _fnameController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: const OutlineInputBorder(),
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3), fontSize: 14),
                        hintText: 'Full Name',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _userNameController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: const OutlineInputBorder(),
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3), fontSize: 14),
                        hintText: 'Username',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: const OutlineInputBorder(),
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3), fontSize: 14),
                        hintText: 'E-mail',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      controller: _passwordController,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(
                          Icons.info,
                          color: Color(0xFF25D365),
                        ),
                        contentPadding: const EdgeInsets.only(left: 10),
                        border: const OutlineInputBorder(),
                        hintStyle: TextStyle(
                            color: Colors.black.withOpacity(.3), fontSize: 14),
                        hintText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Container(
                        color: const Color(0xFF25D365),
                        width: 100.w,
                        height: 38,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                          child: const Text(
                            'SUBMIT',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Have an Account? ",
                            style: TextStyle(fontSize: 11, color: Colors.grey)),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    duration: const Duration(milliseconds: 300),
                                    child: WelcomeScreen()),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xFF0AA84C)),
                            ))
                      ],
                    ),
                    SizedBox(height: 5.h,), 
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
