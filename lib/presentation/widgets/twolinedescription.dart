import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/device.dart';

class TwoLinesDescription extends StatelessWidget {
  const TwoLinesDescription({
    super.key,
    required this.label,
    required this.description,
    required this.actionName,
  });
  final String label, description, actionName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        const Gap(4),
        SizedBox(
          width: Device.deviceWidth(context: context, percent: 1 / 4),
          child: Text(description,
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        const Gap(16),
        TextWithArrow(actionlabel: actionName)
      ],
    );
  }
}

class TextWithArrow extends StatelessWidget {
  const TextWithArrow({
    super.key,
    required this.actionlabel,
  });

  final String actionlabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(actionlabel, style: Theme.of(context).textTheme.displaySmall),
        const Gap(5),
        const Icon(Icons.arrow_right_alt_outlined)
      ],
    );
  }
}
