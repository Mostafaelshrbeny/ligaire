import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_cubit.dart';
import 'package:ligare/presentation/blocs/MerchantCubit/merchant_process_state.dart';
import 'package:table_calendar/table_calendar.dart';

class AppMeetingCalendar extends StatelessWidget {
  const AppMeetingCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MerchantProcessCubit, MerchantProcessState>(
      listener: (context, state) {},
      builder: (context, state) {
        return TableCalendar(
          rowHeight: Device.deviceHeight(context: context, percent: 1 / 25),
          currentDay: MerchantProcessCubit.get(context).today,
          calendarStyle: const CalendarStyle(
            todayDecoration:
                BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            todayTextStyle: TextStyle(color: Colors.black),
            defaultTextStyle: TextStyle(color: Colors.grey),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            MerchantProcessCubit.get(context).selectMeetingDay(selectedDay);
          },
          startingDayOfWeek: StartingDayOfWeek.monday,
          weekendDays: const [],
          availableCalendarFormats: const {
            CalendarFormat.month: 'Month',
          },
          firstDay: DateTime.utc(
              DateTime.now().year, DateTime.now().month, DateTime.now().day),
          lastDay: DateTime.utc(2030, 3, 14),
          focusedDay: DateTime.now(),
        );
      },
    );
  }
}
