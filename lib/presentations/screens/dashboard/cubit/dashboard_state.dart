part of 'dashboard_cubit.dart';

abstract class DashBoardState {}

class Initial extends DashBoardState {}

class PageChangedState extends DashBoardState {
  final int page;

  PageChangedState(this.page);
}