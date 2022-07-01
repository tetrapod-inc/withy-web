import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tetrapod/home/home.dart';
import 'package:tetrapod/policy/policy.dart';
import 'package:tetrapod/privacy/privacy.dart';

part 'routes.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(
      path: '/',
      page: HomePage,
      initial: true,
    ),
    AutoRoute<void>(
      path: '/privacy',
      page: PrivacyPage,
    ),
    AutoRoute<void>(
      path: '/policy',
      page: PolicyPage,
    ),
  ],
)
class AppRouter extends _$AppRouter {}
