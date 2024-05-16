import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/ItemsActionCubit/items_list_actions_state.dart';

class ItemsListActionsCubit extends Cubit<ItemsListActionsState> {
  ItemsListActionsCubit() : super(ItemsListActionsInitial());
  static ItemsListActionsCubit get(context) => BlocProvider.of(context);
  bool twoInRow = true;
  changeItemInRow() {
    twoInRow = !twoInRow;
    emit(ChangeShowInRowState());
  }
}
