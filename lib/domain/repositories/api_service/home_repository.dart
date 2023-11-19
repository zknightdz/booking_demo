import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/data/models/user_model.dart';

abstract class HomeRepository {
  UserModel? getUserInfo();

  ScheduleModel? getSchedule();

  List<BarberShop> getNearestBarberShop();

  List<BarberShop> getMostRecommendedShop();
}
