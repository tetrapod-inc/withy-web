// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:tetrapod/constants.dart';
import 'package:tetrapod/home/view/view.dart';

enum HomePageTab {
  main,
  chat,
  feed,
  roadMap,
  marketing,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          child: Image.asset(
            'assets/images/TETRAPOD_logo_horizontal.png',
          ),
        ),
        // leading: Icon(
        //   Icons.abc,
        //   color: Colors.black,
        // ),
        leadingWidth: 200,
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: HomePageTab.feed.index),
        children: const [
          MainPage(),
          ChatFeaturePage(),
          FeedFeaturePage(),
          RoadMapPage(),
          MarketingPage(),
        ],
      ),
    );
  }
}
