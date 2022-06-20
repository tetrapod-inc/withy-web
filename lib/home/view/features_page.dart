import 'package:flutter/material.dart';

import 'package:tetrapod/constants.dart';
import 'package:tetrapod/extensions.dart';

class _FeaturePage extends StatelessWidget {
  const _FeaturePage({
    required this.title,
    required this.assetPath,
  }) : super();

  final String title;
  final String assetPath;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        TextStyle? textStyle;

        final screenWidth = constraints.maxWidth;

        if (screenWidth < BreakPoint.tablet) {
          textStyle = theme.textTheme.headlineMedium?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          );
        } else {
          textStyle = theme.textTheme.displaySmall?.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          );
        }

        return Column(
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p12),
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: textStyle,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: screenWidth > BreakPoint.tablet
                          ? M3BorderRadius.extraLarge
                          : M3BorderRadius.large,
                      child: Image.asset(
                        assetPath,
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/images/iphone_bazel.png',
                  ),
                ],
              ),
            ),
            gapH32,
          ],
        );
      },
    );
  }
}

class ChatFeaturePage extends StatelessWidget {
  const ChatFeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _FeaturePage(
      title: '지역 사람들과\n관심사에 대한 이야기를\n자유롭게 나누세요'.hardcoded,
      assetPath: 'assets/images/simulation.gif',
    );
  }
}

class FeedFeaturePage extends StatelessWidget {
  const FeedFeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _FeaturePage(
      title: '정보를 공유하고\n더 많은 이야기를\n나눠보세요'.hardcoded,
      assetPath: 'assets/images/simulation2.gif',
    );
  }
}
