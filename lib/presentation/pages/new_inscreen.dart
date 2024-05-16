import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/ItemsActionCubit/items_list_actions_cubit.dart';
import 'package:ligare/presentation/blocs/ItemsActionCubit/items_list_actions_state.dart';
import 'package:ligare/presentation/widgets/backarrowbutton.dart';
import 'package:ligare/presentation/widgets/gridlistproduct.dart';
import 'package:ligare/presentation/widgets/new_in_labelrow.dart';
import 'package:ligare/presentation/widgets/searchrow.dart';

class NewInScreen extends StatelessWidget {
  const NewInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ItemsListActionsCubit(),
      child: BlocConsumer<ItemsListActionsCubit, ItemsListActionsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              leading: AppBackarrow(screencontext: context),
              title: const SearchRowWidget(),
            ),
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              children: [
                const NewInLabelRow(),
                GridListProduct(
                  twoInRow: ItemsListActionsCubit.get(context).twoInRow,
                  itemsNumber: 15,
                  hPadding: 0,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
