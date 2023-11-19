import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class ItemBarberShop extends StatelessWidget {
  final BarberShop barberShop;

  const ItemBarberShop({
    super.key,
    required this.barberShop,
  });

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LoadImage(
              url: barberShop.image ?? '',
              width: 100,
              height: 100,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              children: [
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
            ),
          ),
        ],
      ),
    );
  }
}
