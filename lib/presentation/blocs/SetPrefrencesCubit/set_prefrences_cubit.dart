import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/SetPrefrencesCubit/set_prefrences_state.dart';

class SetPrefrencesCubit extends Cubit<SetPrefrencesState> {
  SetPrefrencesCubit() : super(SetPrefrencesInitial());
  static SetPrefrencesCubit get(context) => BlocProvider.of(context);
  List<int> selectedBrand = [];
  List<int> selectedCollections = [];
  onBrandClick({required int index}) {
    if (selectedBrand.contains(index)) {
      selectedBrand.removeWhere((element) => element == index);
    } else {
      selectedBrand.add(index);
    }
    emit(BrandSelectionState());
  }

  onCollectionClick({required int index}) {
    if (selectedCollections.contains(index)) {
      selectedCollections.removeWhere((element) => element == index);
    } else {
      selectedCollections.add(index);
    }
    emit(CollectionSelectionState());
  }
}
