import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ligare/constants/device.dart';

class CollectionCheckBox extends StatelessWidget {
  const CollectionCheckBox({
    super.key,
    required this.collectionName,
    required this.collectionImage,
    this.onCheck,
    required this.ischecked,
  });
  final String collectionName, collectionImage;
  final Function(bool?)? onCheck;
  final bool ischecked;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(36, 36, 37, 1),
      height: Device.deviceHeight(context: context, percent: 1 / 13),
      width: double.infinity,
      child: Row(
        children: [
          Checkbox(
            checkColor: Colors.grey,
            activeColor: Colors.white,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: ischecked,
            onChanged: onCheck,
            side: const BorderSide(width: 1, color: Colors.grey),
          ),
          const Gap(12),
          Text(
            collectionName,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const Spacer(),
          Container(
              height: Device.deviceHeight(context: context, percent: 1 / 13),
              width: Device.deviceHeight(context: context, percent: 1 / 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(collectionImage), fit: BoxFit.cover)),
              child: Container(
                height: Device.deviceHeight(context: context, percent: 1 / 13),
                width: Device.deviceHeight(context: context, percent: 1 / 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    const Color.fromRGBO(36, 36, 37, 1),
                    const Color.fromRGBO(36, 36, 37, 1).withOpacity(0)
                  ], begin: Alignment.centerLeft, end: Alignment.centerRight),
                ),
              ))
        ],
      ),
    );
  }
}
