import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tetrapod/common/common.dart';

class MarketingPage extends StatelessWidget {
  const MarketingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final autoSizeGroup = AutoSizeGroup();

    return Theme(
      data: Theme.of(context).copyWith(
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          TextStyle? textStyle;

          if (constraints.maxWidth < BreakPoint.tablet) {
            textStyle = theme.textTheme.headlineMedium?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            );
          } else {
            textStyle = theme.textTheme.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            );
          }
          return ColoredBox(
            color: Colors.black,
            child: Column(
              children: [
                const Spacer(),
                Text(
                  '위디와 함께\n사업을 극대화 시켜보세요'.hardcoded,
                  textAlign: TextAlign.center,
                  style: textStyle,
                ),
                gapH24,
                Text(
                  '제휴 문의'.hardcoded,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                gapH32,
                Wrap(
                  children: [
                    _Card(
                      icon: const Icon(Icons.phone),
                      text: '010-9143-0143',
                      group: autoSizeGroup,
                    ),
                    _Card(
                      icon: const Icon(Icons.email),
                      text: 'laon@ai-doop.com',
                      group: autoSizeGroup,
                    ),
                  ],
                ),
                const Spacer(),
                const _BottomBar(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.icon,
    required this.text,
    this.group,
  }) : super();

  final AutoSizeGroup? group;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 160,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            gapH32,
            icon,
            gapH16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.p8),
              child: AutoSizeText(
                text,
                group: group,
                maxLines: 1,
              ),
            ),
            gapH32,
          ],
        ),
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.labelMedium;

    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(Sizes.p12),
      color: Colors.grey.shade200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '(주)AIdoop'.hardcoded,
            style: style,
          ),
          Text(
            '서울특별시 종로구 종로22길 17, 2F'.hardcoded,
            style: style,
          ),
          gapH8,
          // Text(
          //   '사업자 번호: -'.hardcoded,
          //   style: style,
          // ),
          // Text(
          //   '통신판매업: '.hardcoded,
          //   style: style,
          // ),
          // gapH8,
          Text(
            'TEL: 02-6925-1112'.hardcoded,
            style: style,
          ),
          Text(
            'FAX: 02-6925-1113'.hardcoded,
            style: style,
          ),
          Text(
            'MAIL: laon@ai-doop.com'.hardcoded,
            style: style,
          ),
        ],
      ),
    );
  }
}
