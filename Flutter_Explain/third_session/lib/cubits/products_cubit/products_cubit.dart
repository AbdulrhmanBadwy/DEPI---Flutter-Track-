
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:third_session/product_item_mode.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsState.initial());
  final List<ProductItemModel> _listOfProducts = ProductItemModel.listOfItems;

  void loadData(){
    emit(state.copyWith(
      listOfProducts: _listOfProducts,
    ));
  }

  void toggleFavourite(int id){
    final listOfFav = List<int>.from(state.favourites);
    if(state.favourites.contains(id)){
      listOfFav.remove(id);
      emit(state.copyWith(favourites: listOfFav,isItemRemovedToFavourite: true));
    }else{
      listOfFav.add(id);
      emit(state.copyWith(favourites: listOfFav,isItemAddedToFavourite: true));
    }
  }
}
