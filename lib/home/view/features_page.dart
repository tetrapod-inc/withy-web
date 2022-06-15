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

        if (constraints.maxWidth < BreakPoint.tablet) {
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
              flex: 2,
              child: Center(
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
              ),
            ),
            gapH12,
            Expanded(
              flex: 5,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: ClipRRect(
                      borderRadius: M3BorderRadius.extraLarge,
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
            gapH24,
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
      title: '동네 사람들과\n관심사를 자유롭게\n이야기를 나누세요'.hardcoded,
      assetPath: 'assets/images/simulation.gif',
    );
  }
}

class FeedFeaturePage extends StatelessWidget {
  const FeedFeaturePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _FeaturePage(
      title: '친구들과 정보를 공유하고\n더 많은 이야기를 나눠보세요'.hardcoded,
      assetPath: 'assets/images/simulation2.gif',
    );
  }
}
