import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  HomePageCubit()
      : super(const HomePageInitial(index: 0, titlePage: 'EzMobile Trading'));
  void selectPage(int index) {
    switch (index) {
      case 0:
        emit(const HomePageSelected(index: 0, titlePage: 'EzMobile Trading'));
        break;
      case 1:
        emit(const HomePageSelected(index: 1, titlePage: 'Tài sản'));
        break;
      case 2:
        emit(const HomePageSelected(index: 2, titlePage: 'Đặt lệnh'));
        break;
      case 3:
        emit(const HomePageSelected(index: 3, titlePage: 'Hủy/Sửa'));
        break;
      case 4:
        emit(const HomePageSelected(index: 4, titlePage: 'Chuyển tiền'));
        break;
    }
  }
}
