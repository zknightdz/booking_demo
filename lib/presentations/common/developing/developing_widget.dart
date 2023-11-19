import 'package:booking_demo/generated/assets.dart';
import 'package:booking_demo/generated/l10n.dart';
import 'package:booking_demo/utilities/style/style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DevelopingWidget extends StatelessWidget {
  const DevelopingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                Assets.animsDeveloping,
                width: 200,
                height: 200,
                repeat: true,
              ),
              const SizedBox(height: 35),
              Text(
                S.current.feature_developing,
                style: theme.font.headline4.copyWith(
                  color: theme.color.primaryBrand900,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                S.current.feature_developing_message,
                style: theme.font.body3.copyWith(
                  color: theme.color.primaryBrand500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
