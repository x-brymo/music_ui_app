// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:music_ui_app/musice-app/gui/views/login/login.dart';
import '../../../../core/utils/size.dart';
part 'contect_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  int _currentPage = 0;
  List colors = const [
    Color(0xff0E0B1E),
    Color(0xff0E0B1E),
    Color(0xff0E0B1E),
    // Color(0xff0E0B1E),
    // Color(0xff0E0B1E),
  ];

  AnimatedContainer _buildDots({
    int? index,
  }) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        color: Color(0xFF000000),
      ),
      margin: const EdgeInsets.only(right: 5),
      height: 10,
      curve: Curves.easeIn,
      width: _currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double width = SizeConfig.screenW!;
    double height = SizeConfig.screenH!;

    return Scaffold(
      backgroundColor: colors[_currentPage],
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _controller,
                onPageChanged: (value) => setState(() => _currentPage = value),
                itemCount: contents.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w600,
                            fontSize: (width <= 550) ? 26 : 25,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text(
                          contents[i].desc,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Mulish",
                            fontWeight: FontWeight.w300,
                            fontSize: (width <= 550) ? 15 : 21,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          contents[i].image,
                          cacheHeight: 850,
                          height: SizeConfig.blockV! * 32,
                        ),
                        SizedBox(
                          height: (height >= 840) ? 60 : 30,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => LoginScreen()));
                    },
                    child: Text(
                      "Skip For Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  _currentPage + 1 == contents.length
                      ? MaterialButton(
                          onPressed: () {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.easeIn,
                            );
                          },
                          child: const Text(
                            "CONTINUE",
                            style: TextStyle(color: Colors.white),
                          ),
                          height: 55,
                          color: Color(0xffFE2851),
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                          minWidth: double.infinity,
                          padding: EdgeInsets.only(
                            right: 12,
                            left: 12,
                          ),
                        )
                      : MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => LoginScreen()));
                          },
                          child: const Text(
                            "GetStarted",
                            style: TextStyle(color: Colors.white),
                          ),
                          height: 55,
                          color: Color(0xffFE2851),
                          shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                              borderRadius: BorderRadius.circular(12)),
                          minWidth: double.infinity,
                          padding: EdgeInsets.only(
                            right: 12,
                            left: 12,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
