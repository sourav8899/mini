import 'package:flutter/material.dart';
import 'package:mini_2/bottom.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intropage1.dart';
import 'intropage2.dart';
import 'intropage3.dart';
import 'homepage1.dart';

class onBoardingScreen extends StatefulWidget {
  const onBoardingScreen({super.key});

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  //controller
  PageController _controller = PageController();
  bool onlast = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onlast = (index == 2);
              });
            },
            children: [
              intropage1(),
              intropage2(),
              intropage3(),
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(2);
                    },
                    child: Text("skip"),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                  ),
                  onlast
                      ? GestureDetector(
                          onTap: () async {
                            final pref = await SharedPreferences.getInstance();
                            pref.setBool('showHome', true);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return Bottom();
                            }));
                          },
                          child: Text("done"),
                        )
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.easeIn);
                          },
                          child: Text("next"),
                        )
                ],
              ))
        ],
      ),
    );
  }
}
