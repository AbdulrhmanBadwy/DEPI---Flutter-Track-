part of 'products_cubit.dart';

@immutable
class ProductsState {
  final List<ProductItemModel> listOfProducts;
  final List<int> favourites;
  final bool isLoading;
  final bool isError;
  final bool isItemAddedToFavourite;
  final bool isItemRemovedToFavourite;

  const ProductsState({
    this.isItemAddedToFavourite = false,
    this.isItemRemovedToFavourite = false,
    this.listOfProducts = const [],
    this.favourites = const [],
    this.isLoading = false,
    this.isError = false,
});

  factory ProductsState.initial(){
    return ProductsState(
      listOfProducts: [],
      favourites: [],
      isLoading: false,
      isError: false,
      isItemAddedToFavourite:  false,
      isItemRemovedToFavourite : false,
    );
  }
  // CopyWith
ProductsState copyWith({
  List<ProductItemModel>? listOfProducts,
  List<int>? favourites,
  bool? isLoading,
  bool? isError,
  bool? isItemAddedToFavourite,
  bool? isItemRemovedToFavourite,
}){
  return ProductsState(
    listOfProducts: listOfProducts??this.listOfProducts,
    favourites: favourites??this.favourites,
    isError: isError?? this.isError,
    isLoading: isLoading??this.isLoading,
    isItemAddedToFavourite: isItemAddedToFavourite?? this.isItemAddedToFavourite,
    isItemRemovedToFavourite: isItemRemovedToFavourite??this.isItemRemovedToFavourite,
  );
}



}
