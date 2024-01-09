import 'package:ecommerce_app/bloc/home/home_event.dart';
import 'package:ecommerce_app/bloc/home/home_state.dart';
import 'package:ecommerce_app/data/repository/banner_repository.dart';
import 'package:ecommerce_app/di/di.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IBannerRepository _bannerRepository = locator.get();
  
  HomeBloc() : super(HomeInitState()) {
    on<HomeGetInitilzeData>((event, emit) async {
      emit(HomeLodingState());
      var bannerList = await _bannerRepository.getBanners();
      emit(HomeRequsetSuccessState(bannerList));
    });
  }
}
