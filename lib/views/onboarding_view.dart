import 'package:flutter/material.dart';
import 'package:movie_app_ui/constants.dart';
import 'package:movie_app_ui/views/widgets/custom_outline.dart';
import 'package:movie_app_ui/views/widgets/shadow_color.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Constants.kBlackColor,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            Positioned(
              top: screenHeight * 0.1,
              left: -60,
              child: const ShadowColor(
                height: 160,
                width: 160,
                color: Constants.kPinkColor,
              ),
            ),
            Positioned(
              top: screenHeight * 0.3,
              right: -40,
              child: const ShadowColor(
                height: 170,
                width: 170,
                color: Constants.kGreenColor,
              ),
            ),
            SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight *0.07,),
                    CustomOutline(
                        strokeWidth: 4,
                        radius: screenWidth * 0.8,
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor,
                              Constants.kPinkColor.withOpacity(0),
                              Constants.kGreenColor.withOpacity(0.1),
                              Constants.kGreenColor,
                            ],
                          stops: const [0.2,0.4,0.6,0.9]
                        ),
                        width: screenWidth *0.8,
                        height: screenWidth *0.8,
                        padding: const EdgeInsets.all(4),
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/img-onboarding.png'),
                              fit: BoxFit.cover,
                              alignment: Alignment.centerLeft
                            ),
                          ),
                        ),
                    ),
                    SizedBox(height: screenHeight*0.08,),
                    Text(
                        'Watch movies in \nVirtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenHeight <= 660 ? 18 : 34,
                        color: Constants.kWhiteColor.withOpacity(0.8),
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    SizedBox(height: screenHeight*0.05,),
                    Text(
                      'Download and watch offline \nwherever you are',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: screenHeight <= 660 ? 12 : 18,
                          color: Constants.kWhiteColor.withOpacity(0.75),
                          fontWeight: FontWeight.w100
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    CustomOutline(
                      strokeWidth: 3,
                      radius: 20,
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Constants.kPinkColor,
                          Constants.kGreenColor,
                        ],
                      ),
                      width: 160,
                      height: 38,
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Constants.kPinkColor.withOpacity(0.5),
                              Constants.kGreenColor.withOpacity(0.5),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenHeight <= 660 ? 11 : 15,
                              fontWeight: FontWeight.w700,
                              color: Constants.kWhiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) {
                        return CircleDot(index: index,);
                      }),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CircleDot extends StatelessWidget {
  const CircleDot({
    Key? key, required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7,
      width: 7,
      margin: const EdgeInsets.symmetric(
        horizontal: 4,
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: index == 0
              ? Constants.kGreenColor
              : Constants.kWhiteColor.withOpacity(0.2),
      ),
    );
  }
}
