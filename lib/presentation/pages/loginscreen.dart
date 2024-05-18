import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/LoginCubit/login_cubit.dart';
import 'package:ligare/presentation/blocs/LoginCubit/login_state.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/faceidlogin.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';
import 'package:ligare/presentation/widgets/phonetextfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Device.deviceHeight(
                            context: context, percent: 1 / 8)),
                    child: const LigaireTitle(),
                  ),
                  MaxGap(Device.deviceHeight(context: context, percent: 1 / 4)),
                  const PhoneTextField(),
                  const Gap(32),
                  AppCustomButton(
                      buttonChild: Text(
                        LocaleKeys.login.tr(),
                        style: AppThemeData.buttonTextThem(context),
                      ),
                      ontap: () {
                        Navigator.pushNamed(
                            context, Routes.setPreferencesRoute);
                      }),
                  const Gap(40),
                  Text(
                    LocaleKeys.withfaceid.tr(),
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: Colors.white),
                  ),
                  const Gap(24),
                  const FaceIDLogin(),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, Routes.regesteriationRoute);
                      },
                      child: Text(
                        LocaleKeys.createaccount.tr(),
                        style: Theme.of(context).textTheme.displaySmall,
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
