import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _searchField(),
        const SizedBox(width: 24),
        _filter(),
      ],
    );
  }

  _searchField() {
    return Expanded(
      child: Container(
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 18),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: theme.color.blueGray100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: LoadImage(
                url: Assets.iconsSearch,
                width: 24,
                height: 24,
                colors: theme.color.blueGray500,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                    hintText: S.current.search_hint,
                    hintStyle: theme.font.body3.copyWith(
                      color: theme.color.blueGray500,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _filter() {
    return Container(
      width: 44,
      height: 44,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: theme.color.primaryBrand900,
        borderRadius: BorderRadius.circular(8),
      ),
      child: LoadImage(
        url: Assets.iconsSetting,
        width: 20,
        height: 20,
        colors: theme.color.white900,
      ),
    );
  }
}
