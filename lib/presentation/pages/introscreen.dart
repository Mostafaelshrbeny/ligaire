import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ligare/constants/device.dart';

import 'package:ligare/presentation/blocs/IntroCubit/intro_cubit.dart';
import 'package:ligare/presentation/blocs/IntroCubit/intro_state.dart';

import 'package:ligare/presentation/widgets/introbackground.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => IntroCubit(),
      child: BlocConsumer<IntroCubit, IntroState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GestureDetector(
            onTap: () => Device.closeKeyboard(),
            child: SafeArea(
              top: false,
              child: Scaffold(
                body: Stack(
                  children: [
                    const IntroBackground(),
                    Container(
                      height: Device.deviceHeight(context: context),
                      width: Device.deviceWidth(context: context),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                            Colors.black,
                            Colors.black.withOpacity(0.93),
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.0)
                          ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter)),
                      child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 40),
                            child: IntroCubit.get(context)
                                .introWidget(context: context),
                          )),
                    ),
                    const LigaireTitle()
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
