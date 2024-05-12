import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/homepost.dart';

class HomePostsList extends StatelessWidget {
  const HomePostsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const HomePostWidget(),
      separatorBuilder: (context, index) =>
          Gap(Device.deviceHeight(context: context, percent: 1 / 8)),
      itemCount: 10,
    );
  }
}
