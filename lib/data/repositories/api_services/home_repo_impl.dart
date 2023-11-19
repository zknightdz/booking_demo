import 'package:booking_demo/data/data_source/mock_data.dart';
import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/data/models/user_model.dart';
import 'package:booking_demo/domain/repositories/api_service/home_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: HomeRepository)
class HomeRepoImpl extends HomeRepository {
  @override
  UserModel? getUserInfo() => MockData.user;

  @override
  ScheduleModel? getSchedule() => MockData.topSchedule;

  @override
  List<BarberShop> getNearestBarberShop() => MockData.nearestBarberShop;

  @override
  List<BarberShop> getMostRecommendedShop() => MockData.mostRecommended;
}
