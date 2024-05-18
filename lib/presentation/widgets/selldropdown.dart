import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ligare/constants/app_theme.dart';

class SellDropDown extends StatelessWidget {
  const SellDropDown({
    super.key,
    required this.label,
    required this.choiceListLabel,
  });
  final String label, choiceListLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const Gap(4),
        Container(
          color: AppThemeData.cardColor,
          child: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                dropdownColor: AppThemeData.cardColor,
                isExpanded: true,
                value: choiceListLabel,
                items: [
                  DropdownMenuItem(
                    enabled: false,
                    value: choiceListLabel,
                    child: Text(
                      choiceListLabel,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ],
                onChanged: (value) {},
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        )
      ],
    );
  }
}
