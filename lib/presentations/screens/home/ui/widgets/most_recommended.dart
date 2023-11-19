import 'package:booking_demo/data/models/barber_shop.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/see_all_button.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/item_barber_shop.dart';
import 'package:booking_demo/presentations/screens/home/ui/widgets/item_slider_shop.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MostRecommended extends StatelessWidget {
  final List<BarberShop> mostRecommended;

  MostRecommended({
    super.key,
    required this.mostRecommended,
  });

  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.most_recommended,
          style: theme.font.headline3,
        ),
        const SizedBox(height: 16),
        _slider(),
        const SizedBox(height: 16),
        _indicator(),
        const SizedBox(height: 16),
        _listView(),
        const Center(
          child: SeeAllButton(),
        ),
      ],
    );
  }

  _slider() {
    return SizedBox(
      height: 310,
      child: PageView.builder(
        controller: controller,
        itemCount: 5,
        itemBuilder: (_, index) {
          return ItemSliderShop(
            barberShop: mostRecommended[index],
          );
        },
      ),
    );
  }

  _indicator() {
    return Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: 5,
        effect: ExpandingDotsEffect(
          dotHeight: 8,
          dotWidth: 8,
          dotColor: theme.color.coolGray200,
          activeDotColor: theme.color.primaryBrand900,
        ),
      ),
    );
  }

  _listView() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: mostRecommended.length - 5,
      itemBuilder: (_, index) {
        return ItemBarberShop(
          barberShop: mostRecommended[index + 5],
        );
      },
    );
  }
}
