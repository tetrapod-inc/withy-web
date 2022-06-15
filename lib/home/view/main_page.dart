import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tetrapod/constants.dart';
import 'package:tetrapod/extensions.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final theme = Theme.of(context);

        TextStyle? textStyle;
        double buttonHeight;
        double imageHeight;

        if (constraints.maxWidth < BreakPoint.tablet) {
          textStyle = theme.textTheme.headlineMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          );
          buttonHeight = Sizes.p36;
          imageHeight = 360;
        } else {
          textStyle = theme.textTheme.displaySmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          );
          buttonHeight = Sizes.p52;
          imageHeight = 500;
        }

        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/social.jpg',
                  fit: BoxFit.cover,
                  height: imageHeight,
                  width: double.maxFinite,
                ),
                Container(
                  height: imageHeight + Sizes.p4,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.3, 1.0],
                      colors: [
                        Colors.white,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 0,
              child: Column(
                children: [
                  const SizedBox(height: 120),
                  Text(
                    '취미나 관심사를\n동네 사람들과 자유롭게'.hardcoded,
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                  gapH40,
                  Row(
                    children: [
                      SizedBox(
                        child: SvgPicture.asset(
                          'assets/images/app_store.svg',
                          height: buttonHeight,
                        ),
                      ),
                      gapW12,
                      Image.asset(
                        height: buttonHeight,
                        'assets/images/google_play.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
