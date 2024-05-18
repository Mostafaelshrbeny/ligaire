import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_cubit.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_state.dart';
import 'package:ligare/presentation/widgets/appmeeting_calendar.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/meetingtime_options.dart';

class MeetLigaireScreen extends StatefulWidget {
  const MeetLigaireScreen({super.key});

  @override
  State<MeetLigaireScreen> createState() => _MeetLigaireScreenState();
}

class _MeetLigaireScreenState extends State<MeetLigaireScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MerchantProcessCubit(),
      child: BlocConsumer<MerchantProcessCubit, MerchantProcessState>(
        listener: (context, state) {},
        builder: (context, state) {
          return GestureDetector(
            onTap: () {
              MerchantProcessCubit.get(context).timeSelection(false);
              MerchantProcessCubit.get(context).resetTime();
            },
            child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close_rounded)),
              ),
              body: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 22),
                        child: Text(
                          LocaleKeys.findatime.tr(),
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                      ),
                      const Divider(
                        thickness: 0.3,
                        height: 0.3,
                        color: Colors.grey,
                      ),
                      const AppMeetingCalendar(),
                      const Spacer(),
                      MerchantProcessCubit.get(context).timeGValue == "GValue"
                          ? const SizedBox()
                          : Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 22),
                              child: AppCustomButton(
                                  buttonChild: Text(
                                    "Confirm",
                                    style: AppThemeData.buttonTextThem(context),
                                  ),
                                  ontap: () {
                                    Navigator.pushReplacementNamed(
                                        context, Routes.meetingBookedRoute);
                                  }),
                            )
                    ],
                  ),
                  MerchantProcessCubit.get(context).showTimeSelection
                      ? const MeetingTimeOptions()
                      : const SizedBox()
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
