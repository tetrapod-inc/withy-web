import 'package:flutter/material.dart';

class Sizes {
  static const double p4 = 4;
  static const double p8 = 8;
  static const double p12 = 12;
  static const double p16 = 16;
  static const double p20 = 20;
  static const double p24 = 24;
  static const double p28 = 28;
  static const double p32 = 32;
  static const double p36 = 36;
  static const double p40 = 40;
  static const double p44 = 44;
  static const double p48 = 48;
  static const double p52 = 52;
  static const double p56 = 56;
  static const double p60 = 60;
  static const double p64 = 64;
  static const double p76 = 76;
  static const double p80 = 80;
}

const gapW4 = SizedBox(width: Sizes.p4);
const gapW8 = SizedBox(width: Sizes.p8);
const gapW12 = SizedBox(width: Sizes.p12);
const gapW16 = SizedBox(width: Sizes.p16);
const gapW20 = SizedBox(width: Sizes.p20);
const gapW24 = SizedBox(width: Sizes.p24);
const gapW32 = SizedBox(width: Sizes.p32);
const gapW40 = SizedBox(width: Sizes.p40);

const gapH4 = SizedBox(height: Sizes.p4);
const gapH8 = SizedBox(height: Sizes.p8);
const gapH12 = SizedBox(height: Sizes.p12);
const gapH16 = SizedBox(height: Sizes.p16);
const gapH20 = SizedBox(height: Sizes.p20);
const gapH24 = SizedBox(height: Sizes.p24);
const gapH28 = SizedBox(height: Sizes.p28);
const gapH32 = SizedBox(height: Sizes.p32);
const gapH36 = SizedBox(height: Sizes.p36);
const gapH40 = SizedBox(height: Sizes.p40);
const gapH44 = SizedBox(height: Sizes.p44);
const gapH60 = SizedBox(height: Sizes.p60);
const gapH64 = SizedBox(height: Sizes.p64);
const gapH80 = SizedBox(height: Sizes.p80);
const gapH120 = SizedBox(height: 120);

class DefaultPadding {
  static const horizontal = EdgeInsets.symmetric(horizontal: Sizes.p20);
  static const horizontalLarge = EdgeInsets.symmetric(horizontal: Sizes.p24);
}

extension M3BorderRadius on BorderRadius {
  static const extraSmall = BorderRadius.all(Radius.circular(Sizes.p4));
  static const extraTopSmall = BorderRadius.vertical(
    top: Radius.circular(Sizes.p4),
  );

  static const small = BorderRadius.all(Radius.circular(Sizes.p8));
  static const medium = BorderRadius.all(Radius.circular(Sizes.p12));
  static const large = BorderRadius.all(Radius.circular(Sizes.p16));

  static const largeStart = BorderRadius.only(
    topLeft: Radius.circular(Sizes.p16),
    bottomLeft: Radius.circular(Sizes.p16),
  );
  static const largeEnd = BorderRadius.only(
    topRight: Radius.circular(Sizes.p16),
    bottomRight: Radius.circular(Sizes.p16),
  );
  static const largeTop = BorderRadius.vertical(
    top: Radius.circular(Sizes.p16),
  );

  static const extraLarge = BorderRadius.all(Radius.circular(Sizes.p28));
  static const extraLargeTop = BorderRadius.vertical(
    top: Radius.circular(Sizes.p28),
  );
}

class BreakPoint {
  static const tablet = 480;
  static const pc = 900;
}
