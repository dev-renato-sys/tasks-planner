import 'package:flutter/material.dart';
import 'package:tasks_planner/components/buttons/button.dart';
import 'package:tasks_planner/components/buttons/button_signin.dart';
import 'package:tasks_planner/components/input/email.dart';
import 'package:tasks_planner/helpers/hex_color.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    double phoneHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: phoneWidth > phoneHeight ? phoneHeight * 2 : phoneHeight,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: phoneWidth > phoneHeight ? 36.0 : phoneHeight / 8),
              child: Image.asset('assets/img/logo.png'),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: phoneWidth > phoneHeight ? 180.0 : 240.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const Text(
                    'My Study Life',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Text(
                      'Create a unique emotional story that describes better than words',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: HexColor.fromHex('#585A66'), fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        width: 1, color: HexColor.fromHex('#E4EDFF')),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24))),
                height: phoneWidth > phoneHeight
                    ? phoneHeight * 1.15
                    : phoneHeight / 1.85,
                width: phoneWidth,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Signing with',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: AppButtonSignin(
                            'Google',
                            icon: Image.asset('assets/img/google_logo.png'),
                          )),
                          const SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                              child: AppButtonSignin(
                            'Apple',
                            icon: Image.asset('assets/img/apple_logo.png'),
                          ))
                        ],
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Divider(
                            thickness: 1,
                            color: HexColor.fromHex('#C4D7FF'),
                          )),
                          const SizedBox(
                            width: 50.0,
                          ),
                          const Text(
                            'Or',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          const SizedBox(
                            width: 50.0,
                          ),
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: HexColor.fromHex('#C4D7FF'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      const InputEmail(),
                      const SizedBox(
                        height: 16.0,
                      ),
                      Expanded(
                          child: AppButtonPrimary(
                        'Continue',
                        onPressed: () =>
                            Navigator.pushNamed(context, '/preview'),
                      ))
                    ],
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
