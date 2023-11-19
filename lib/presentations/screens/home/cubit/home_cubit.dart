import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/data/models/user_model.dart';
import 'package:booking_demo/domain/use_cases/home/home_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit({
    required this.useCase,
  }) : super(Initial());

  final HomeUseCase useCase;

  getData() {
    final user = useCase.getUserInfo();
    final schedule = useCase.getSchedule();
    final nearestShop = useCase.getNearestBarberShop();
    final mostRecommendedShop = useCase.getMostRecommendedShop();

    emit(Success(
      user: user,
      bookingSchedule: schedule,
      nearestShop: nearestShop ?? [],
      mostRecommendedShop: mostRecommendedShop ?? [],
    ));
  }
}
