import 'package:booking_demo/domain/repositories/api_service/home_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeUseCase {
  final HomeRepository homeRepository;

  HomeUseCase({required this.homeRepository});
}
