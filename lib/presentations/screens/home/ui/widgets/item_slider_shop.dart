import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class ItemSliderShop extends StatelessWidget {
  final BarberShop barberShop;

  const ItemSliderShop({
    super.key,
    required this.barberShop,
  });

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _images(context),
        const SizedBox(height: 12),
        Text(
          barberShop.name ?? '',
          style: theme.font.headline4,
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadImage(
              url: Assets.iconsLocation,
              width: 16,
              height: 16,
              colors: theme.color.primaryBrand500,
            ),
            const SizedBox(width: 8),
            Text(
              '${barberShop.address ?? ''} (${barberShop.distance})',
              style: theme.font.body3.copyWith(
                color: theme.color.primaryBrand500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LoadImage(
              url: Assets.iconsStar,
              width: 16,
              height: 16,
              colors: theme.color.primaryBrand500,
            ),
            const SizedBox(width: 8),
            Text(
              barberShop.rating ?? '',
              style: theme.font.body3.copyWith(
                color: theme.color.primaryBrand500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  _images(BuildContext context) {
    return Stack(
      children: [
        LoadImage(
          url: barberShop.image ?? '',
          width: MediaQuery.of(context).size.width - 36,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: _bookingButton(),
        ),
      ],
    );
  }

  _bookingButton() {
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
            S.current.booking,
            style: theme.font.body2.copyWith(
              color: theme.color.white900,
            ),
          ),
          const SizedBox(width: 4),
          LoadImage(
            url: Assets.iconsCalendar,
            width: 20,
            colors: theme.color.white900,
          )
        ],
      ),
    );
  }
}
