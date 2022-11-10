part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState extends Equatable {
  final int index;
  final String titlePage;
  const HomePageState({required this.index, required this.titlePage});
  @override
  List<Object?> get props => [index, titlePage];
}

class HomePageInitial extends HomePageState {
  const HomePageInitial({required super.index, required super.titlePage});
}

class HomePageSelected extends HomePageState {
  const HomePageSelected({required super.index, required super.titlePage});
}
