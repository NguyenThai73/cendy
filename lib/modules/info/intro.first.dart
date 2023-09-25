import 'package:cendy/app/setting.dart';
import 'package:cendy/common/base/will.pop.scope.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../app/routers.setting/slideRightRoute.dart';
import 'intro.second.dart';

class IntroFirstScreen extends StatefulWidget {
  const IntroFirstScreen({super.key});

  @override
  State<IntroFirstScreen> createState() => _IntroFirstScreenState();
}

class _IntroFirstScreenState extends State<IntroFirstScreen> {
  List<Widget> listSlide = [const Slide1(), const Slide2(), const Slide3()];
  CarouselController buttonCarouselController = CarouselController();
  int current = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPS(
      child: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CarouselSlider(
                items: listSlide,
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.6,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    }),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: listSlide.asMap().entries.map((entry) {
                  return GestureDetector(
                    // onTap: () => buttonCarouselController.animateToPage(entry.key),
                    child: Container(
                      width: (current == entry.key) ? 30 : 12.0,
                      height: 12.0,
                      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.black.withOpacity(current == entry.key ? 0.9 : 0.3),
                      ),
                    ),
                  );
                }).toList(),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                height: 40,
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          if (current < 2) {
                            buttonCarouselController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
                          } else {
                            Navigator.push(context, SlideRightRoute(page: const IntroSecondScreen()));
                          }
                        },
                        child: Text(
                          current != 2 ? "Continue" : "Get started",
                          style: AppTheme.white16n600,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, SlideRightRoute(page: const IntroSecondScreen()));
                },
                child: Text(
                  current != 2 ? "Skip" : "Sign in",
                  style: AppTheme.black16n400,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Slide1 extends StatelessWidget {
  const Slide1({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              "assets/images/intro1.png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "Meet Awesome Friends & Enjoy Yourself",
            style: AppTheme.black18n700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            "Engage with like-minded students and build great conversations ",
            style: AppTheme.black16n300,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Slide2 extends StatelessWidget {
  const Slide2({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              "assets/images/intro2.png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "Start Dating Others",
            style: AppTheme.black18n700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            "Find safe and meaningful love without revealing your identity to your friends ",
            style: AppTheme.black16n300,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Slide3 extends StatelessWidget {
  const Slide3({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              "assets/images/intro3.png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            "Find Friends & Get Inspiration",
            style: AppTheme.black18n700,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            "Connect with students everywhere. Introverts? We got you! ",
            style: AppTheme.black16n300,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
