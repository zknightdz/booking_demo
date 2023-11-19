import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class LiveMaps extends StatelessWidget {
  const LiveMaps({super.key});

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.find_a_barber_nearby,
          style: theme.font.headline3,
        ),
        const SizedBox(height: 16),
        Stack(
          children: [
            // TODO: Implement live maps
            LoadImage(
              url: Assets.imagesDemoMaps,
              width: MediaQuery.of(context).size.width - 36,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: _findNow(),
            ),
          ],
        ),
        const SizedBox(height: 6),
      ],
    );
  }

  _findNow() {
    return Container(
      decoration: BoxDecoration(
          color: theme.color.primaryBrand900,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            S.current.find_now,
            style: theme.font.body2.copyWith(
              color: theme.color.white900,
            ),
          ),
          const SizedBox(width: 4),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: LoadImage(
              url: Assets.iconsSearch,
              width: 20,
              colors: theme.color.white900,
            ),
          )
        ],
      ),
    );
  }
}
