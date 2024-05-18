import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/SellingCubit/sell_product_cubit.dart';
import 'package:ligare/presentation/widgets/selltype_options.dart';

class AppBottomSheet {
  static sellOperation(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        context: context,
        builder: (context) => BlocProvider(
              create: (context) => SellProductCubit(),
              child: const SellOperation(),
            ));
  }
}
