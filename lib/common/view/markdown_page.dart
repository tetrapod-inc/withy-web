import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:tetrapod/common/common.dart';

class MarkdownPage extends StatelessWidget {
  const MarkdownPage({super.key, required this.assetPath});

  final String assetPath;

  Future<String> loadMarkdown(BuildContext context) async {
    return DefaultAssetBundle.of(context).loadString(assetPath);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: loadMarkdown(context),
      builder: (_, snapshot) => Scaffold(
        body: Center(
          child: !snapshot.hasData
              ? null
              : SizedBox(
                  width: 600,
                  child: MarkdownView(data: snapshot.data!),
                ),
        ),
      ),
    );
  }
}

class MarkdownView extends StatelessWidget {
  const MarkdownView({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Markdown(
      data: data,
      styleSheet: MarkdownStyleSheet(
        h1: textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        h2: textTheme.titleLarge,
        h3: textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.w500,
        ),
        h1Padding: const EdgeInsets.symmetric(
          vertical: Sizes.p32,
        ),
        h2Padding: const EdgeInsets.only(
          top: Sizes.p24,
          bottom: Sizes.p12,
        ),
        h3Padding: const EdgeInsets.only(
          top: Sizes.p16,
          bottom: Sizes.p4,
        ),
        p: const TextStyle(height: 1.3),
      ),
    );
  }
}
