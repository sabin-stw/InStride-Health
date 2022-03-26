import 'package:flutter/material.dart';

import '../../../routes.dart';
import '../component/constants.dart';
import '../component/slanding_clipper.dart';
import 'screen_two.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.network(
                  'https://www.thevinemedicalcenter.com/wp-content/uploads/2020/06/4466-doctor-consultation.gif',
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.cover,
                ),
                ClipPath(
                  clipper: SlandingClipper(),
                  child: Container(
                    height: size.height * 0.4,
                    color: yellow,
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.65,
              child: Container(
                width: size.width,
                padding: const EdgeInsets.all(appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "Online Consultation",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: white,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    const Text(
                      'We offer you online consultation \nwith easy e-mobile service.',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: white),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: appPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => Navigator.of(context)
                          .restorablePushNamedAndRemoveUntil(
                              AppRoutes.identity, (route) => false),
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: appPadding),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const OnboardingScreenTwo(),
                          ),
                        );
                      },
                      backgroundColor: white,
                      child: const Icon(
                        Icons.navigate_next_rounded,
                        color: black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
