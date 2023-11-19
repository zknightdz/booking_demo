part of 'home_cubit.dart';

abstract class HomeState {}

class Initial extends HomeState {}

class Success extends HomeState {
  final UserModel? user;
  final ScheduleModel? bookingSchedule;
  final List<BarberShop> nearestShop;
  final List<BarberShop> mostRecommendedShop;

  Success({
    required this.user,
    required this.bookingSchedule,
    required this.nearestShop,
    required this.mostRecommendedShop,
  });
}
