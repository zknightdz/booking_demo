import 'package:booking_demo/presentations/screens/dashboard/cubit/dashboard_cubit.dart';
import 'package:booking_demo/utilities/constants/enums.dart';
import 'package:booking_demo/utilities/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardPages extends StatelessWidget {
  final PageController _pageController =
      PageController(initialPage: MainPageEnum.home.page);

  DashBoardPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DashBoardCubit>();

    return BlocConsumer<DashBoardCubit, DashBoardState>(
      listenWhen: (_, current) => current is PageChangedState,
      listener: (context, state) {
        if (state is PageChangedState) {
          _pageController.jumpToPage(bloc.currentPageIndex);
        }
      },
      buildWhen: (_, current) => current is Initial,
      builder: (context, state) {
        return PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: bloc.pages,
        );
      },
    );
  }
}
