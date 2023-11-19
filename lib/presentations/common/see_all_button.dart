import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  const SeeAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: theme.color.primaryBrand900, width: 2),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.current.see_all,
            style: theme.font.headline4.copyWith(
              color: theme.color.primaryBrand900,
            ),
          ),
          const SizedBox(width: 8),
          LoadImage(
            url: Assets.iconsSquareArrowRightUp,
            width: 24,
            colors: theme.color.primaryBrand900,
          )
        ],
      ),
    );
  }
}
