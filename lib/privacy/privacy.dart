import 'package:flutter/material.dart';
import 'package:tetrapod/common/common.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MarkdownPage(assetPath: 'assets/text/privacy.md');
  }
}
