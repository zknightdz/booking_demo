import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/see_all_button.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/item_barber_shop.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class NearestBarbershop extends StatelessWidget {
  final List<BarberShop> nearestShop;

  const NearestBarbershop({
    super.key,
    required this.nearestShop,
  });

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.nearest_barbershop,
          style: theme.font.headline3,
        ),
        const SizedBox(height: 16),
        _listNearestShop(),
        const Center(
          child: SeeAllButton(),
        ),
      ],
    );
  }

  _listNearestShop() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: nearestShop.length,
      itemBuilder: (_, index) {
        return ItemBarberShop(
          barberShop: nearestShop[index],
        );
      },
    );
  }
}
