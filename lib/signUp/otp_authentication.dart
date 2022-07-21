import 'package:bizs_app/signUp/fillUserDetails.dart';
import 'package:bizs_app/signUp/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

class OtpAuthentication extends StatelessWidget {
  const OtpAuthentication({Key? key}) : super(key: key);

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
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
                      children: [
                        const SizedBox(
                          height: 0,
                        ),
                        const Text(
                          "ENTER OTP",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        OtpTextField(
                          fillColor: Colors.white,

                          margin: const EdgeInsets.all(10),
                          fieldWidth: 50,
                          focusedBorderColor: const Color(0xFF0AA84C),
                          numberOfFields: 4,
                          // borderColor: Color(0xFF0AA84C),
                          //set to true to show as box or false to show as dash
                          showFieldAsBox: true,
                          //runs when a code is typed in
                          onCodeChanged: (String code) {
                            //handle validation or checks here
                          },
                          //runs when every textfield is filled
                          onSubmit: (String verificationCode) {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: const Text("Verification Code"),
                                    content: Text(
                                        'Code entered is $verificationCode'),
                                  );
                                });
                          }, // end onSubmit
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 65.w,
                          child: Stack(
                            children: [
                              const Text(
                                "Waiting for SMS         \n9564152435. ",
                                style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 70,
                                child: InkWell(
                                  onTap: () {},
                                  child: Row(
                                    children: const [
                                      Text("Edit ",
                                          // maxLines: 2,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Color(0xFF0AA84C),
                                              fontWeight: FontWeight.bold)),
                                      Icon(
                                        Icons.edit,
                                        size: 12,
                                        color: Color(0xFF0AA84C),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(height: 20,),
                        const SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            color: const Color(0xFF25D365),
                            width: 20.w,
                            height: 38,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                shadowColor: Colors.pink,
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 16),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      duration:
                                          const Duration(milliseconds: 100), 
                                      child: FillUserDetails()),
                                );
                              },
                              child: const Text(
                                'Verify',
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Resend code",
                            // maxLines: 2,
                            style: TextStyle(
                                fontSize: 11,
                                color: const Color(0xFF15562F).withOpacity(.73),
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          height: 30,
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
                                        child: WelcomeScreen()),
                                  );
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
                        SizedBox(height: 5.h,),  
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
