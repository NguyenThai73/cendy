import 'package:cendy/common/base/will.pop.scope.dart';
import 'package:flutter/material.dart';

import '../../app/routers.setting/sizeRoute.dart';
import '../../app/setting.dart';
import 'intro.first.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.push(context, SizeRoute(page:  const IntroFirstScreen()));
    });
  }

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                Text(
                  "Cendy",
                  style: AppTheme.black32n400,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
