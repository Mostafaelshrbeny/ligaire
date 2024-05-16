import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ligare/presentation/blocs/SellingCubit/sell_product_state.dart';

class SellProductCubit extends Cubit<SellProductState> {
  SellProductCubit() : super(SellProductInitial());
  static SellProductCubit get(context) => BlocProvider.of(context);
}
