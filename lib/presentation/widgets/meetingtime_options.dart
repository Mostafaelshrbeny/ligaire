import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_cubit.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_state.dart';
import 'package:ligare/presentation/widgets/timeselection_row.dart';

class MeetingTimeOptions extends StatelessWidget {
  const MeetingTimeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: BlocConsumer<MerchantProcessCubit, MerchantProcessState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.only(
                bottom: Device.deviceHeight(context: context, percent: 1 / 8)),
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              AppThemeData.cardColor,
              AppThemeData.cardColor.withOpacity(0.55)
            ], end: Alignment.topCenter, begin: Alignment.bottomCenter)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What time works best?\nShowing times for ${MerchantProcessCubit.get(context).today.day} ${MerchantProcessCubit.get(context).today.month} ${MerchantProcessCubit.get(context).today.year}",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const Gap(12),
                  TimeSelectionForMeeting(
                    value: 'First',
                    gValue: MerchantProcessCubit.get(context).timeGValue,
                  ),
                  TimeSelectionForMeeting(
                    value: 'Second',
                    gValue: MerchantProcessCubit.get(context).timeGValue,
                  ),
                  TimeSelectionForMeeting(
                    value: 'Third',
                    gValue: MerchantProcessCubit.get(context).timeGValue,
                  ),
                  Text(
                    'Meeting Duration       30 Mins',
                    style: Theme.of(context).textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
