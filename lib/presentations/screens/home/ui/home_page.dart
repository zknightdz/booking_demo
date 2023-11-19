import 'package:booking_demo/presentations/screens/home/cubit/home_cubit.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/booking_schedule.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/home_app_bar.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/live_maps.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/most_recommended.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/nearest_barbershop.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/search_box.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:booking_demo/utilities/ultils/ultis.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    afterBuild(() {
      context.read<HomeCubit>().getData();
    });
  }

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Scaffold(
      backgroundColor: theme.color.white900,
      body: SafeArea(
        child: _body(),
      ),
    );
  }

  _body() {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (_, state) {
        if (state is Success) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                HomeAppBar(
                  userModel: state.user,
                ),
                const SizedBox(height: 18),
                BookingSchedule(
                  scheduleModel: state.bookingSchedule,
                ),
                const SizedBox(height: 24),
                const SearchBox(),
                const SizedBox(height: 16),
                NearestBarbershop(
                  nearestShop: state.nearestShop,
                ),
                const SizedBox(height: 24),
                MostRecommended(
                  mostRecommended: state.mostRecommendedShop,
                ),
                const SizedBox(height: 24),
                const LiveMaps(),
              ],
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}
