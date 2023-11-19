import 'package:booking_demo/utilities/constants/enums.dart';

extension MainPageExt on MainPageEnum {
  int get page {
    var index = 0;
    switch (this) {
      case MainPageEnum.home:
        index = 0;
        break;
      case MainPageEnum.booking:
        index = 1;
        break;

      case MainPageEnum.chat:
        index = 2;
        break;
      case MainPageEnum.profile:
        index = 3;
        break;
    }

    return index;
  }
}

extension ExtendedIterable<E> on Iterable<E> {
  void forEachIndexed(void Function(E e, int i) f) {
    var i = 0;
    forEach((e) => f(e, i++));
  }
}

extension NullCheck on String? {
  bool get isNullOrEmpty {
    if (this == null || this == "") {
      return true;
    }

    return false;
  }
}
