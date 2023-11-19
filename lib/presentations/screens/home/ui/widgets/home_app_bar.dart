import 'package:booking_demo/data/models/user_model.dart';
import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  final UserModel? userModel;

  const HomeAppBar({
    super.key,
    this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                LoadImage(
                  url: Assets.iconsLocation,
                  width: 16,
                  height: 16,
                  colors: theme.color.primaryBrand900,
                ),
                const SizedBox(width: 4),
                Text(
                  userModel?.address ?? '',
                  style: theme.font.body3.copyWith(
                    color: theme.color.coolGray500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              userModel?.name ?? '',
              style: theme.font.headline3,
            ),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(42.0),
          child: LoadImage(
            url: userModel?.avatar ?? '',
            width: 42,
            height: 42,
          ),
        ),
      ],
    );
  }
}
