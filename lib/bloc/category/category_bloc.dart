import 'package:ecommerce_app/bloc/category/category_event.dart';
import 'package:ecommerce_app/bloc/category/category_state.dart';
import 'package:ecommerce_app/data/repository/category_repository.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoryRepository _repository = locator.get();
  CategoryBloc() : super(CategoryInitState()) {
    on<CategoryRequestList>(
      (event, emit) async {
        emit(CategoryLodingState());
        var response = await _repository.getCategories();
        emit(CategoryResponseState(response));
      },
    );
  }
}
