import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ligare/constants/app_routs.dart';
import 'package:ligare/presentation/blocs/LoginCubit/login_cubit.dart';

class FaceIDLogin extends StatelessWidget {
  const FaceIDLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await LoginCubit.get(context).applock()
            ? {
                if (context.mounted)
                  {Navigator.pushNamed(context, Routes.setPreferencesRoute)}
              }
            : null;
      },
      child: SvgPicture.asset('assets/images/face-id-svgrepo-com 1.svg'),
    );
  }
}
