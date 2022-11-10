part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState extends Equatable {
  final int index;
  const HomePageState({required this.index});
  @override
  List<Object?> get props => [index];
}

class HomePageInitial extends HomePageState {
  const HomePageInitial({required super.index});
}

class HomePageSelected extends HomePageState {
  const HomePageSelected({required super.index});
}
