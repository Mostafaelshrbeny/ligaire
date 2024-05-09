import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/constants/assets.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/presentation/widgets/custombutton.dart';
import 'package:ligare/presentation/widgets/horizintalscroll.dart';
import 'package:ligare/presentation/widgets/ligairetitile.dart';
import 'package:ligare/presentation/widgets/notificationring.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LigaireTitle(),
        centerTitle: true,
        actions: const [NotificationRing()],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 24),
        children: [
          const AppHorizintalScroll(),
          Gap(Device.deviceHeight(context: context, percent: 1 / 16)),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            height: Device.deviceHeight(context: context, percent: 1 / 4.2),
            margin: const EdgeInsets.symmetric(horizontal: 16),
            color: Colors.grey.withOpacity(0.25),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Favorite car models',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const Gap(8),
                        Text(
                          'Select your favorite car brands and models to be able to personalize your experience !',
                          maxLines: 3,
                          style: Theme.of(context).textTheme.headlineSmall,
                          overflow: TextOverflow.clip,
                        ),
                        const Gap(8),
                        const Spacer(),
                        AppCustomButton(
                            buttonChild: const Text('data'), ontap: () {})
                      ],
                    ),
                  ),
                ),
                Image.asset(Assets.halfCar)
              ],
            ),
          )
        ],
      ),
    );
  }
}
