import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/presentations/screens/dashboard/cubit/dashboard_cubit.dart';
import 'package:booking_demo/utilities/extensions/extensions.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardNavigationBar extends StatefulWidget {
  const DashBoardNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  _DashBoardNavigationBarState createState() => _DashBoardNavigationBarState();
}

class _DashBoardNavigationBarState extends State<DashBoardNavigationBar> {
  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return BlocBuilder<DashBoardCubit, DashBoardState>(
      buildWhen: (_, current) => current is PageChangedState,
      builder: (context, state) {
        return Material(
          color: theme.color.white900,
          elevation: 8,
          child: SafeArea(
            top: false,
            left: false,
            right: false,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 64,
              child: Row(
                children: _buildBottomBarItem(context),
              ),
            ),
          ),
        );
      },
    );
  }

  _buildBottomBarItem(BuildContext context) {
    final bloc = context.read<DashBoardCubit>();
    List<Widget> items = [];
    bloc.pages.forEachIndexed((_, idx) {
      final isSelected = bloc.currentPageIndex == idx;
      final iconUrl =
          isSelected ? bloc.iconsSelected(idx) : bloc.iconsUnSelect(idx);

      items.add(
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                bloc.currentPageIndex = idx;
              },
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          LoadImage(
                            url: iconUrl,
                            width: 24,
                            height: 24,
                            colors: isSelected
                                ? theme.color.primaryBrand900
                                : theme.color.blueGray400,
                          ),
                          const SizedBox(height: 2),
                          Text(
                            bloc.label(idx),
                            style: theme.font.t10MBody.copyWith(
                              color: isSelected
                                  ? theme.color.primaryBrand900
                                  : theme.color.blueGray400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });

    return items;
  }
}
