import 'package:booking_demo/data/models/barber_shop.dart';

class ScheduleModel {
  final BarberShop? barber;
  final String? time;
  final String? timeEstimation;

  ScheduleModel({
    this.barber,
    this.time,
    this.timeEstimation,
  });
}
