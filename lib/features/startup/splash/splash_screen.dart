import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:storytime/app/routes.dart';
import 'package:storytime/features/startup/splash/cubit/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static Widget route(BuildContext context, _) {
    return BlocProvider(
      create: (context) => SplashCubit()..start(),
      child: const SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listenWhen: (previous, current) => current is SplashDone,
      listener: (context, state) {
        context.go(Routes.home);
      },
      child: const Scaffold(
        body: Center(
          child: Text(
            'Story Time',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
