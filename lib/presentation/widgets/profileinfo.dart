import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/borderedtext.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: Device.deviceHeight(context: context, percent: 1 / 25),
          backgroundImage: const AssetImage('assets/images/Frame 17.png'),
        ),
        const Gap(12),
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Mohamed Kadi',
                style: Theme.of(context).textTheme.displayMedium),
            const Gap(8),
            const BorderdGreyText(
              text: 'Black Member',
            ),
          ],
        ),
      ],
    );
  }
}
