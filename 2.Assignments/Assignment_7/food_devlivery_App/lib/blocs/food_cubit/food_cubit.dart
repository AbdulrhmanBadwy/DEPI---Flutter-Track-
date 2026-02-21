
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_devlivery_app/models/view_item_model.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodState.initial());

  final List<ViewItemModel>_listOfItems = ViewItemModel.items;

  void loadData(){
    emit(state.copyWith(listOfItems: _listOfItems));
  }


  void toggleFavourite(int id){
    final listOfFav = List<int>.from(state.favourites);

    if(state.favourites.contains(id)){
      listOfFav.remove(id);
    }
    else {
      listOfFav.add(id);
    }

    emit(state.copyWith(favourites: listOfFav));

  }

  void switchPreview(bool isGrid){

    emit(state.copyWith(isGrid: !isGrid));
  }
}
