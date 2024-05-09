import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';

class AppHorizintalScroll extends StatelessWidget {
  const AppHorizintalScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Device.deviceHeight(context: context, percent: 1 / 4.2),
      child: ListView.separated(
          padding: const EdgeInsets.only(left: 16),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) => Container(
                height: Device.deviceHeight(context: context, percent: 1 / 4.2),
                width: Device.deviceWidth(context: context, percent: 1 / 2.8),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Assets.watchAsset),
                        fit: BoxFit.cover)),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  height:
                      Device.deviceHeight(context: context, percent: 1 / 4.2),
                  width: Device.deviceWidth(context: context, percent: 1 / 2.8),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.transparent.withOpacity(0.6),
                    Colors.transparent.withOpacity(0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LAMBO Royal...',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(color: Colors.white),
                        ),
                        const Gap(2),
                        Text(
                          '3 Mins ago',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) =>
              Gap(Device.deviceWidth(context: context, percent: 1 / 20)),
          itemCount: 10),
    );
  }
}
