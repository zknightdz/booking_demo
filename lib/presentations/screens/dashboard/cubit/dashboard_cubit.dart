import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/developing/developing_widget.dart';
import 'package:booking_demo/presentations/common/keep_alive_page.dart';
import 'package:booking_demo/presentations/screens/home/cubit/home_cubit.dart';
import 'package:booking_demo/presentations/screens/home/ui/home_page.dart';
import 'package:booking_demo/utilities/constants/enums.dart';
import 'package:booking_demo/utilities/extensions/extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

part 'dashboard_state.dart';

@injectable
class DashBoardCubit extends Cubit<DashBoardState> {
  DashBoardCubit() : super(Initial());

  int _currentPageIndex = MainPageEnum.home.page;

  late final List<String> _iconsUnSelects = [
    Assets.iconsHome,
    Assets.iconsCalendar,
    Assets.iconsChat,
    Assets.iconsAccount,
  ];

  late final List<String> _iconsSelected = [
    Assets.iconsHome,
    Assets.iconsCalendar,
    Assets.iconsChat,
    Assets.iconsAccount,
  ];

  final List<String> _labels = [
    S.current.home,
    S.current.booking,
    S.current.chat,
    S.current.profile,
  ];

  int get currentPageIndex => _currentPageIndex;

  set currentPageIndex(int page) {
    _currentPageIndex = page;
    emit(PageChangedState(_currentPageIndex));
  }

  String iconsUnSelect(index) => _iconsUnSelects[index];

  String iconsSelected(index) => _iconsSelected[index];

  String label(index) => _labels[index];

  String get currentIconsUnSelect => _iconsUnSelects[_currentPageIndex];

  String get currentIconsSelected => _iconsSelected[_currentPageIndex];

  String get currentLabel => _labels[_currentPageIndex];

  List<Widget> pages = [];

  init() {
    pages = [
      KeepAlivePage(
        child: BlocProvider<HomeCubit>(
          create: (_) => GetIt.instance.get(),
          child: const HomePage(),
        ),
      ),
      const DevelopingWidget(),
      const DevelopingWidget(),
      const DevelopingWidget(),
    ];
  }
}
