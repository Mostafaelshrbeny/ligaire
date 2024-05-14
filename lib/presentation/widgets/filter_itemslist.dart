import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/constants/collections.dart';
import 'package:ligare/data/data_sources/filters.dart';
import 'package:ligare/presentation/blocs/FilterSearchCubit/filter_search_cubit.dart';
import 'package:ligare/presentation/blocs/FilterSearchCubit/filter_search_state.dart';

class FilterItemsList extends StatelessWidget {
  const FilterItemsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterSearchCubit(),
      child: BlocConsumer<FilterSearchCubit, FilterSearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) => InkWell(
              onTap: () =>
                  FilterSearchCubit.get(context).selectNewFilter(id: index),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                width: double.infinity,
                color: Filters.getselectedFilters().contains(index)
                    ? const Color.fromRGBO(71, 71, 72, 1)
                    : null,
                child: Text(
                  Collections.carBrands[index],
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ),
            ),
            itemCount: Collections.carBrands.length,
          );
        },
      ),
    );
  }
}
