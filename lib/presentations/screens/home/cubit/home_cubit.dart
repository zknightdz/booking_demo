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
}
