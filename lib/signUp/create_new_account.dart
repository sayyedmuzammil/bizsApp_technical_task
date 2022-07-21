import 'package:bizs_app/signUp/otp_authentication.dart';
import 'package:bizs_app/signUp/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);

  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  final _countryCode = TextEditingController();

  final _mobileNumber = TextEditingController();
  bool termsCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              height: 12.h,
            ),
            Column(
             
              children: [
                Container(
                  // alignment: Alignment.bottomCenter,
                  height: 51.h,     
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5FFFA),
                    // border: Border(top: BorderSide(color: Colors.black, width: 3)),
                    //
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xFF0AA74B).withOpacity(.52),
                          spreadRadius: 1),
                    ],
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  // color: Colors.green,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 30),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,  
                      children: [

                        const SizedBox(
                          height: 0,
                        ),
                        const Text(
                          "CREATE NEW ACCOUNT",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 50,
                              child: TextField(
                                keyboardType: TextInputType.none,
                                controller: _countryCode,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 12),
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(.3),
                                      fontSize: 14),
                                  hintText: '+91',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 50.w,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                controller: _mobileNumber,
                                decoration: InputDecoration(
                                  contentPadding:
                                      const EdgeInsets.only(left: 10),
                                  border: const OutlineInputBorder(),
                                  hintStyle: TextStyle(
                                      color: Colors.black.withOpacity(.3),
                                      fontSize: 14),
                                  hintText: 'Enter Your Number',
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        duration:
                                            const Duration(milliseconds: 100), 
                                        child: const OtpAuthentication()));
                              },
                              child: Container(
                                width: 46,
                                height: 46,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF25D365),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.done,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            Text(
                              "Why do i need to provide my \nphone?",
                              style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      const Color(0xFF0AA84C).withOpacity(.73)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,
                              side: BorderSide(
                                color: const Color(0xFF0AA84C).withOpacity(.69),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  5,
                                ),
                              ),
                              fillColor: MaterialStateProperty.all(
                                  const Color(0xFF0AA84C).withOpacity(.69)),
                              value: termsCheck,
                              onChanged: (bool? val) {
                                setState(() {
                                  termsCheck = !termsCheck;
                                });
                              },
                            ),
                            SizedBox(
                              width: 65.w,
                              child: FittedBox(
                                  child: Stack(
                                children: [
                                  const Text(
                                      "BizsApp helps you to grow your business. By signing in, you\nagree to our ",
                                      // maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.black)),
                                  Positioned(
                                    bottom: 0,
                                    left: 58,
                                    child: InkWell(
                                      onTap: () {},
                                      child: const Text(
                                          "Terms of Use & Privecy Policy ",
                                          // maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF0052CC))),
                                    ),
                                  ),
                                ],
                              )),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          'assets/images/safe logo.png',
                          width: 166,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Have an Account? ",
                                style: TextStyle(
                                    fontSize: 11, color: Colors.grey)),
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                        type: PageTransitionType.fade,
                                        duration:
                                            const Duration(milliseconds: 300),
                                        child: WelcomeScreen(),
                                      ));
                                },
                                child: const Text(
                                  "Login",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF0AA84C)),
                                ))
                          ],
                        ),
                        SizedBox(height: 5.h,)
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
