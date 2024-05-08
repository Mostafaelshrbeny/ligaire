import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/SetPasswordCubit/set_password_cubit.dart';
import 'package:ligare/presentation/blocs/SetPasswordCubit/set_password_state.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/signupfields.dart';

class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Device.closeKeyboard(),
      child: BlocProvider(
        create: (context) => SetPasswordCubit(),
        child: BlocConsumer<SetPasswordCubit, SetPasswordState>(
          listener: (context, state) {
            // TODO: implement listener
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                leading: AppBackarrow(
                  screencontext: context,
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.passwordsetyourpassword.tr(),
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const Gap(32),
                    RegesterTextField(
                        isHidden: SetPasswordCubit.get(context).hidden,
                        suffixIcon: IconButton(
                            onPressed: () =>
                                SetPasswordCubit.get(context).showPassword(),
                            icon: Icon(SetPasswordCubit.get(context).hideIcon)),
                        label: LocaleKeys.passwordpassword.tr(),
                        hint: LocaleKeys.passwordtypeyourpassword.tr()),
                    const Gap(24),
                    RegesterTextField(
                        isHidden: SetPasswordCubit.get(context).hidden,
                        suffixIcon: IconButton(
                            onPressed: () =>
                                SetPasswordCubit.get(context).showPassword(),
                            icon: Icon(SetPasswordCubit.get(context).hideIcon)),
                        label: LocaleKeys.passwordconfirmpassword.tr(),
                        hint: LocaleKeys.passwordretypeyourpassword.tr()),
                    const Spacer(),
                    AppCustomButton(
                        buttonChild: Text(
                          LocaleKeys.done.tr(),
                          style: AppThemeData.buttonTextThem(context),
                        ),
                        ontap: () {
                          Navigator.pushNamed(context, Routes.loginRoute);
                        }),
                    const Gap(32)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
