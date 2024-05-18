import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';
import 'package:ligare/constants/device.dart';
import 'package:ligare/core/lang/locale_keys.g.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';

class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  List<String> carPhotos = [
    'assets/images/Screenshot_2023-12-27_at_3.20 10.png',
    "assets/images/Screenshot_2023-12-27_at_3.20 3.png",
    "assets/images/Screenshot_2023-12-27_at_3.20 5.png",
    "assets/images/Screenshot_2023-12-27_at_3.20 7.png",
    "assets/images/Screenshot_2023-12-27_at_3.20 12.png",
    "assets/images/Screenshot_2024-01-06_at_6.37 1 (1).png"
  ];
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: AppBackarrow(screencontext: context),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          Text(
            'Ford Mustang 1967 Fastback - Iconic Classic Muscle the best classic car',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Gap(16),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            padding: EdgeInsets.all(
                Device.deviceWidth(context: context, percent: 1 / 10)),
            color: AppThemeData.cardColor,
            height: Device.deviceHeight(context: context, percent: 1 / 2.5),
            width: double.infinity,
            child: Image.asset(carPhotos[x]),
          ),
          SizedBox(
            height: Device.deviceHeight(context: context, percent: 1 / 12),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => InkWell(
                onTap: () => setState(() {
                  x = index;
                }),
                child: Container(
                  width: Device.deviceWidth(context: context, percent: 1 / 6),
                  decoration: BoxDecoration(
                      color: AppThemeData.cardColor,
                      border:
                          x == index ? Border.all(color: Colors.white) : null,
                      image: DecorationImage(
                          image: AssetImage(carPhotos[index]),
                          fit: BoxFit.contain)),
                ),
              ),
              separatorBuilder: (BuildContext context, int index) =>
                  const Gap(10),
              itemCount: carPhotos.length,
            ),
          ),
          const Gap(32),
          Text('16,500,000 EGP',
              style: Theme.of(context).textTheme.displayMedium),
          const Gap(32),
          Text(
            "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const Gap(48),
          const CarDetailesRow(),
          const Gap(50),
          Text(
            LocaleKeys.detailsfeatures.tr(),
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          const Gap(12),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 30,
            ),
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.4)),
                  color: AppThemeData.cardColor,
                ),
                child: Center(
                    child: Text(
                  "Adaptive steering",
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(color: Colors.grey),
                )),
              );
            },
            itemCount: 7,
          ),
          const Gap(48),
          Text(
            LocaleKeys.location.tr(),
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          const Gap(4),
          Container(
            height: Device.deviceHeight(context: context, percent: 1 / 4),
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/Field.png'))),
          ),
          Gap(Device.deviceHeight(context: context, percent: 1 / 15))
        ],
      ),
    );
  }
}

class CarDetailesRow extends StatelessWidget {
  const CarDetailesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeatuersType(
          featureIcon: Icons.format_color_fill,
          featureName: LocaleKeys.cutsomfiltercolor.tr(),
          feature: Row(mainAxisSize: MainAxisSize.min, children: [
            const CircleAvatar(radius: 7, backgroundColor: Colors.black),
            const Gap(4),
            Text('Black', style: Theme.of(context).textTheme.displaySmall)
          ]),
        ),
        FeatuersType(
            featureIcon: Icons.miscellaneous_services_outlined,
            featureName: LocaleKeys.detailsengine.tr(),
            feature: Text('V8 5.0L',
                style: Theme.of(context).textTheme.displaySmall)),
        FeatuersType(
            featureIcon: Icons.calendar_month,
            featureName: LocaleKeys.sellwordsyear.tr(),
            feature:
                Text('2021', style: Theme.of(context).textTheme.displaySmall)),
        FeatuersType(
            featureIcon: Icons.compare_arrows_outlined,
            featureName: LocaleKeys.detailsmilage.tr(),
            feature: Text('19,750 KM',
                style: Theme.of(context).textTheme.displaySmall)),
      ],
    );
  }
}

class FeatuersType extends StatelessWidget {
  const FeatuersType({
    super.key,
    required this.featureIcon,
    required this.featureName,
    required this.feature,
  });
  final IconData featureIcon;
  final String featureName;
  final Widget feature;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          featureIcon,
          color: Colors.grey,
          size: 28,
        ),
        const Gap(8),
        Text(featureName, style: Theme.of(context).textTheme.headlineSmall),
        const Gap(12),
        feature
      ],
    );
  }
}
