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
          TextStyle? titleTextStyle;
          var stepTitleTextStyle = theme.textTheme.titleMedium;
          var stepperWidth = 400.0;

          if (constraints.maxWidth < BreakPoint.tablet) {
            titleTextStyle = theme.textTheme.headlineMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            );
          } else if (constraints.maxWidth < BreakPoint.pc) {
            titleTextStyle = theme.textTheme.displaySmall?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            );
          } else {
            titleTextStyle = theme.textTheme.displayMedium?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            );
            stepTitleTextStyle = theme.textTheme.titleLarge;
            stepperWidth = 520;
          }

          return Column(
            children: [
              const Spacer(),
              Text(
                '앞으로 위디는\n어떻게 발전할까요?'.hardcoded,
                textAlign: TextAlign.center,
                style: titleTextStyle,
              ),
              gapH64,
              SizedBox(
                width: stepperWidth,
                child: Stepper(
                  currentStep: 1,
                  controlsBuilder: (context, details) => const SizedBox(),
                  physics: const NeverScrollableScrollPhysics(),
                  steps: [
                    Step(
                      title: Text(
                        '지역 내 사람들이 자유롭게 이야기할 수 있도록'.hardcoded,
                        style: stepTitleTextStyle,
                      ),
                      isActive: true,
                      state: StepState.complete,
                      content: const SizedBox(),
                    ),
                    Step(
                      title: Text(
                        '지역 내 친구들과 모임을 만들 수 있도록'.hardcoded,
                        style: stepTitleTextStyle,
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
                        style: stepTitleTextStyle,
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
              const Spacer(),
            ],
          );
        },
      ),
    );
  }
}
