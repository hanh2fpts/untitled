import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit() : super(const HomePageInitial(index: 0));
  void selectPage(int index) {
    switch (index) {
      case 0:
        emit(const HomePageSelected(index: 0));
        break;
      case 1:
        emit(const HomePageSelected(index: 1));
        break;
      case 2:
        emit(const HomePageSelected(index: 2));
        break;
      case 3:
        emit(const HomePageSelected(index: 3));
        break;
      case 4:
        emit(const HomePageSelected(index: 4));
        break;
    }
  }
}
