// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:booking_demo/data/repositories/api_services/home_repo_impl.dart'
    as _i5;
import 'package:booking_demo/domain/repositories/api_service/home_repository.dart'
    as _i4;
import 'package:booking_demo/domain/use_cases/home/home_usecase.dart' as _i6;
import 'package:booking_demo/presentations/screens/dashboard/cubit/dashboard_cubit.dart'
    as _i3;
import 'package:booking_demo/presentations/screens/home/cubit/home_cubit.dart'
    as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.DashBoardCubit>(() => _i3.DashBoardCubit());
    gh.factory<_i4.HomeRepository>(() => _i5.HomeRepoImpl());
    gh.factory<_i6.HomeUseCase>(
        () => _i6.HomeUseCase(homeRepository: gh<_i4.HomeRepository>()));
    gh.factory<_i7.HomeCubit>(
        () => _i7.HomeCubit(useCase: gh<_i6.HomeUseCase>()));
    return this;
  }
}
