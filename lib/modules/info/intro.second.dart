import 'package:cendy/app/setting.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/routers.setting/fadeRoute.dart';
import '../../common/base/will.pop.scope.dart';
import '../../common/widget/page.rule.dart';
import '../login/ui/login.screen.dart';

class IntroSecondScreen extends StatefulWidget {
  const IntroSecondScreen({super.key});

  @override
  State<IntroSecondScreen> createState() => _IntroSecondScreenState();
}

class _IntroSecondScreenState extends State<IntroSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPS(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/infor.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  "Cendy",
                  style: AppTheme.black32n400,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  height: 56,
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            "New account",
                            style: AppTheme.white16n600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 15, left: 25, right: 25),
                  height: 56,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10), border: Border.all(width: 1)),
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                              Navigator.push(context, FadeRoute(page: const LoginScreen()));
                          },
                          child: Text(
                            "Sign in",
                            style: AppTheme.black16n600,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 25, left: 25, right: 25, top: 30),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    TextSpan(children: [
                      TextSpan(
                          text: 'By continuing, you agree to our Terms of Service. Learn how we process your data in our ',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            height: 1.33,
                          )),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => const PageRule(),
                              ),
                            );
                          },
                      ),
                      TextSpan(
                          text: ' And ',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            height: 1.33,
                          )),
                      TextSpan(
                        text: 'Cookies Policy',
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          height: 1.33,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push<void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => const PageRule(),
                              ),
                            );
                          },
                      ),
                      TextSpan(
                          text: ' .',
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            height: 1.33,
                          )),
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
