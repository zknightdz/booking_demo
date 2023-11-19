import 'package:booking_demo/di/di.dart';
import 'package:booking_demo/presentations/screens/dashboard/cubit/dashboard_cubit.dart';
import 'package:booking_demo/presentations/screens/dashboard/ui/dashboard_screen.dart';
import 'package:booking_demo/utilities/routes/app_router.dart';
import 'package:booking_demo/utilities/routes/route_define.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardRoute extends RouteDefine {
  @override
  Path initRoute(dynamic arguments) => Path(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider<DashBoardCubit>(
              create: (_) => getIt<DashBoardCubit>()..init(),
            ),
          ],
          child: const DashBoardScreen(),
        ),
      );

  @override
  String get routeName => '/';

  static push() {
    AppRouter.pushAndRemoveUntil(
      routeName: DashboardRoute().routeName,
    );
  }
}
