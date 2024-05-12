import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class AdsCoverdContainer extends StatelessWidget {
  const AdsCoverdContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Device.deviceHeight(context: context, percent: 1 / 4),
      width: Device.deviceWidth(context: context),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/laura-chouette-W-7k72ThEr0-unsplash 1.png'),
              fit: BoxFit.cover)),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          padding: const EdgeInsets.all(12),
          color: Colors.white.withOpacity(0.8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Just in: Versache',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium!
                    .copyWith(color: Colors.black),
              ),
              Text(
                'Medusa 95',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.black),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Shop Collection',
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(color: Colors.black),
                  ),
                  const Icon(
                    Icons.arrow_right_alt,
                    color: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
