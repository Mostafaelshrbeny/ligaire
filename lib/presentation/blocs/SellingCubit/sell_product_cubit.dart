import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:ligare/presentation/blocs/SellingCubit/sell_product_state.dart';
import 'package:ligare/presentation/widgets/product_type.dart';
import 'package:ligare/presentation/widgets/sellertype_choose.dart';

class SellProductCubit extends Cubit<SellProductState> {
  SellProductCubit() : super(SellProductInitial());
  static SellProductCubit get(context) => BlocProvider.of(context);
  int sellProsses = 0;
  bool buttonShow = false;
  int sellerType = 0;
  setSellerType({required int type}) {
    setType(type: type);
    emit(SellerTypeSelectedState());
  }

  setType({required int type}) {
    sellerType = type;
    showButton();
    emit(TestState());
  }

  showButton() {
    buttonShow = true;
    emit(TestState());
  }

  bottomChild() {
    List<Widget> personSellerWidget = [
      const SellerType(),
      const ChooseProductType()
    ];
    return personSellerWidget[sellProsses];
  }

  changeSellProcess() {
    sellProsses++;
    buttonShow = false;
    emit(TestState());
  }
}
