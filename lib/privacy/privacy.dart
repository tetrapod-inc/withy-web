import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  Future<String> loadMarkdown(BuildContext context) async {
    return DefaultAssetBundle.of(context).loadString('assets/text/privacy.md');
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return FutureBuilder<String>(
      future: loadMarkdown(context),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox();
        return Scaffold(
          body: Center(
            child: SizedBox(
              width: 600,
              child: Markdown(
                data: snapshot.data!,
                styleSheet: MarkdownStyleSheet(
                  h1: textTheme.headlineSmall?.copyWith(
                    height: 4,
                  ),
                  h2: textTheme.titleLarge?.copyWith(
                    height: 3,
                  ),
                  h3: textTheme.titleMedium?.copyWith(
                    height: 2,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
