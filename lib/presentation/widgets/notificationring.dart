import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ligare/constants/app_routs.dart';

class NotificationRing extends StatelessWidget {
  const NotificationRing({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 13),
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, Routes.notificationsRoute),
        child: const FaIcon(
          FontAwesomeIcons.bell,
          size: 21,
        ),
      ),
    );
  }
}
