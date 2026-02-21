part of 'food_cubit.dart';

@immutable
class FoodState {
  final List<ViewItemModel> listOfItems;
  final List<int> favourites;
  final bool isError;
  final bool isLoading;
  final bool isGrid;

   const FoodState({
    required this.listOfItems,
    required this.favourites,
    required this.isError,
    required this.isLoading,
    required this.isGrid,
  });

  factory FoodState.initial(){
    return FoodState(
      listOfItems: [],
      favourites: [],
      isError: false,
      isLoading: false,
      isGrid: false,
    );
  }


  FoodState copyWith({
     List<ViewItemModel>? listOfItems,
     List<int>? favourites,
     bool? isError,
     bool? isLoading,
     bool? isGrid,
}){
    return FoodState(
      listOfItems: listOfItems?? this.listOfItems,
      favourites: favourites??this.favourites,
      isError: isError?? this.isError,
      isGrid: isGrid?? this.isError,
      isLoading: isLoading?? this.isLoading,
    );
}

}
