import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'widgets/signup_widget.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key? key}) : super(key: key);
  @override
  State<NewAccount> createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 500),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            SlideTransition(
                position: _offsetAnimation, child: const SignUpWidget()),
          ],
        ),
      )),
    );
  }
}
