import 'package:flutter/material.dart';
import 'package:ligare/constants/device.dart';

class CodeDropDown extends StatelessWidget {
  const CodeDropDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(48, 28, 29, 1),
      width: Device.deviceWidth(context: context, percent: 1 / 5.5),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            isExpanded: true,
            value: '+21',
            items: const [
              DropdownMenuItem(
                value: '+21',
                child: Text('+21'),
              ),
              DropdownMenuItem(
                value: '+20',
                child: Text('+20'),
              ),
              DropdownMenuItem(
                value: '+22',
                child: Text('+22'),
              ),
            ],
            onChanged: (value) {},
            style: Theme.of(context).textTheme.displaySmall,
          ),
        ),
      ),
    );
  }
}
