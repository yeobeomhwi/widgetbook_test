import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:map/pages/findhospital/find_hospital_page.dart';
import 'package:map/pages/home_pages.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'FindHospitalPage',
          builder: (BuildContext context, GoRouterState state) {
            return FindHospitalPage();
          },
        ),
      ],
    ),
  ],
);
