import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';

class HomeGreyBox extends StatelessWidget {
  const HomeGreyBox({
    super.key,
    required this.label,
    required this.dexcription,
    required this.buttontext,
    this.hPadding = 16,
  });
  final String label, dexcription, buttontext;
  final double hPadding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      height: Device.deviceHeight(context: context, percent: 1 / 4.2),
      margin: EdgeInsets.symmetric(horizontal: hPadding),
      color: AppThemeData.cardColor,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  const Gap(8),
                  Text(
                    dexcription,
                    maxLines: 3,
                    style: Theme.of(context).textTheme.headlineSmall,
                    overflow: TextOverflow.clip,
                  ),
                  const Gap(8),
                  const Spacer(),
                  AppCustomButton(
                      backgroundColor: Colors.transparent,
                      buttonChild: Text(
                        buttontext,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white),
                      ),
                      ontap: () {})
                ],
              ),
            ),
          ),
          Image.asset(Assets.halfCar)
        ],
      ),
    );
  }
}
