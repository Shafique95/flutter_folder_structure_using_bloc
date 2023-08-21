import 'package:flutter/cupertino.dart';

import '../../../domain/product_model.dart';

@immutable
abstract class ProductState {}
class ProductLoadingState extends ProductState {}
class ProductLoadedState extends ProductState {
  final List<Product> productList;
  ProductLoadedState({required this.productList});
}
class ProductErrorState extends ProductState {
  final String errorMsg;
  ProductErrorState({required this.errorMsg});
}
