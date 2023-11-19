import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/data/models/user_model.dart';
import 'package:booking_demo/domain/repositories/api_service/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeUseCase {
  final HomeRepository homeRepository;

  HomeUseCase({required this.homeRepository});

  UserModel? getUserInfo() => homeRepository.getUserInfo();

  ScheduleModel? getSchedule() => homeRepository.getSchedule();

  List<BarberShop>? getNearestBarberShop() =>
      homeRepository.getNearestBarberShop();

  List<BarberShop>? getMostRecommendedShop() =>
      homeRepository.getMostRecommendedShop();
}
