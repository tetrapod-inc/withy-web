import 'package:flutter/material.dart';
import 'package:tetrapod/constants.dart';
import 'package:tetrapod/extensions.dart';

class RoadMapPage extends StatelessWidget {
  const RoadMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Theme(
      data: Theme.of(context).copyWith(
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
      ),
      child: LayoutBuilder(
        builder: (contBuilderext, constraints) {
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
              gapH120,
              Text(
                '앞으로 위디는\n어떻게 발전할까요?'.hardcoded,
                textAlign: TextAlign.center,
                style: textStyle,
              ),
              gapH64,
              Row(
                children: [
                  gapW20,
                  Expanded(
                    flex: 2,
                    child: Stepper(
                      currentStep: 1,
                      controlsBuilder: (context, details) => const SizedBox(),
                      physics: const NeverScrollableScrollPhysics(),
                      steps: [
                        Step(
                          title: Text(
                            '지역 내 사람들이 자유롭게 이야기할 수 있도록'.hardcoded,
                            style: theme.textTheme.titleMedium,
                          ),
                          isActive: true,
                          state: StepState.complete,
                          content: const SizedBox(),
                        ),
                        Step(
                          title: Text(
                            '지역 내 친구들과 모임을 만들 수 있도록'.hardcoded,
                            style: theme.textTheme.titleMedium,
                          ),
                          content: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '원하는 나이대와 성별로\n나만의 모임을 만들 수 있어요'.hardcoded,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                height: 1.6,
                              ),
                            ),
                          ),
                        ),
                        Step(
                          title: Text(
                            '지역 내 사람들이 더 재밌게'.hardcoded,
                            style: theme.textTheme.titleMedium,
                          ),
                          content: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '모임 지원으로\n모임 성사 시 더 재밌게 놀 수 있도록 지원해줘요'.hardcoded,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                height: 1.6,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (constraints.maxWidth >= BreakPoint.tablet)
                    Expanded(
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          borderRadius: M3BorderRadius.large,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 4,
                              color: Colors.grey,
                            ),
                            BoxShadow(
                              offset: Offset(-16, -16),
                              blurRadius: 32,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/friends.jpg',
                          // height: 300,
                        ),
                      ),
                    ),
                  gapW40,
                ],
              ),
              gapH40,
            ],
          );
        },
      ),
    );
  }
}
