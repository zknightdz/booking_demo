import 'package:booking_demo/data/models/schedule_model.dart';
import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/presentations/common/load_image/load_image.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';

class BookingSchedule extends StatelessWidget {
  final ScheduleModel? scheduleModel;

  const BookingSchedule({
    super.key,
    this.scheduleModel,
  });

  @override
  Widget build(BuildContext context) {
    theme.registerNotifyUpdated(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.color.primaryBrand900,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          const LoadImage(
            url: Assets.imagesCardBg,
          ),
          Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                _shop(),
                const SizedBox(height: 18),
                _divider(),
                const SizedBox(height: 18),
                ..._schedule(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _shop() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                scheduleModel?.barber?.name ?? '',
                style: theme.font.headline2.copyWith(
                  color: theme.color.white900,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  LoadImage(
                    url: Assets.iconsLocation,
                    width: 16,
                    colors: theme.color.white900,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${scheduleModel?.barber?.address ?? ''} (${scheduleModel?.barber?.distance})',
                    style: theme.font.body3.copyWith(
                      color: theme.color.white900,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(width: 80),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LoadImage(
              url: Assets.iconsGoogleMaps,
              width: 18,
            ),
            const SizedBox(height: 4),
            Text(
              S.current.maps,
              style: theme.font.caption1.copyWith(
                color: theme.color.white900,
              ),
            ),
          ],
        ),
      ],
    );
  }

  _divider() => Container(height: 1, color: theme.color.primaryBrand200);

  _schedule() {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            S.current.booking_schedule,
            style: theme.font.caption1.copyWith(
              color: theme.color.white900,
            ),
          ),
          Text(
            S.current.time_estimation,
            style: theme.font.caption1.copyWith(
              color: theme.color.white900,
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LoadImage(
            url: Assets.iconsCalendar,
            width: 18,
            colors: theme.color.white900,
          ),
          const SizedBox(width: 8),
          Text(
            scheduleModel?.time ?? '',
            style: theme.font.headline4.copyWith(
              color: theme.color.white900,
            ),
          ),
          const Spacer(),
          Text(
            scheduleModel?.timeEstimation ?? '',
            style: theme.font.headline4.copyWith(
              color: theme.color.white900,
            ),
          ),
        ],
      ),
    ];
  }
}
