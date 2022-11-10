import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);
  void _selectPage() => emit(state);
}
