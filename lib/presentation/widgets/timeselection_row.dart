import 'package:flutter/material.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_cubit.dart';

class TimeSelectionForMeeting extends StatelessWidget {
  const TimeSelectionForMeeting({
    super.key,
    required this.value,
    required this.gValue,
  });
  final String value, gValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      color: AppThemeData.darkColorScheme.background,
      width: double.infinity,
      child: Row(
        children: [
          Radio(
              value: value,
              groupValue: gValue,
              onChanged: (value) {
                MerchantProcessCubit.get(context).selectTimeForMeeting(value!);
              }),
          Text("15:00", style: Theme.of(context).textTheme.displaySmall)
        ],
      ),
    );
  }
}
