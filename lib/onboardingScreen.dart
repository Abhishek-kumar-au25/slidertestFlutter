import 'package:flutter/material.dart';
import 'package:live_wired_walkthrough/Walkthrough%20Screens/screen1.dart';
import 'package:live_wired_walkthrough/Walkthrough%20Screens/screen2.dart';
import 'package:live_wired_walkthrough/Walkthrough%20Screens/screen3.dart';
import 'package:live_wired_walkthrough/loginSignup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Controller to keep track of which page
  final PageController _controller = PageController();

  // keep track if we are on the last page
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // PageView for walkthrough screens
          PageView(
            controller: _controller,
            // onPageChanged: (index) {
            //   setState(() {
            //     onLastPage = (index == 2);
            //   });
            // },
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),

          // Navigation Arrows and Dot Indicators
          Positioned(
            bottom: 60, // Adjust the position from the bottom
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Circular Arrow (Above the Dots)
                GestureDetector(
                  onTap: () {
                    if (onLastPage) {
                      // Navigate to Login/Signup page
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginSignUP();
                      }));
                    } else {
                      // Go to the next page
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.pink, // Arrow background color
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_forward, // Forward Arrow Icon
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),

                const SizedBox(height: 20), // Space between arrow and dots

                // SmoothPageIndicator (Dots)
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.pink,
                    dotColor: Colors.grey.shade300,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
