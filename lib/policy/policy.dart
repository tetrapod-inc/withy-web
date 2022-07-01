import 'package:flutter/material.dart';
import 'package:tetrapod/common/common.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MarkdownPage(assetPath: 'assets/text/policy.md');
  }
}
