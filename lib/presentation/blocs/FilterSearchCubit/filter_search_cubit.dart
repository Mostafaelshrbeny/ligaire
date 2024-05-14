import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/data/data_sources/filters.dart';
import 'package:ligare/presentation/blocs/FilterSearchCubit/filter_search_state.dart';

class FilterSearchCubit extends Cubit<FilterSearchState> {
  FilterSearchCubit() : super(FilterSearchInitial());
  static FilterSearchCubit get(context) => BlocProvider.of(context);

  // List<int> selectedFilters = [];

  selectNewFilter({required int id}) {
    Filters.selectNewFilter(id);
    emit(FilterAddedState());
  }
}
