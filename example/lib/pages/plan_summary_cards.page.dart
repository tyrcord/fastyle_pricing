import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:fastyle_pricing/fastyle_pricing.dart';
import 'package:fastyle_dart/fastyle_dart.dart';

class PlanSummaryCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ThemeHelper.colors.getBlueGrayColor(context);

    return FastSectionPage(
      titleText: 'Plan Summary Cards',
      isViewScrollable: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FastPlanSummaryCard(
            titleText: 'Free Version',
            iconBuilder: (context) {
              return LayoutBuilder(builder: (context, constraint) {
                return Icon(
                  Icons.pedal_bike,
                  size: constraint.biggest.height,
                  color: color,
                );
              });
            },
            footer: FastLink(text: 'Go  Premium', onTap: () {}),
          ),
          kFastSizedBox16,
          FastPlanSummaryCard(
            titleText: 'Pro Version',
            iconBuilder: (context) {
              return LayoutBuilder(builder: (context, constraint) {
                return Icon(
                  Icons.airport_shuttle,
                  size: constraint.biggest.height,
                  color: color,
                );
              });
            },
          ),
          kFastSizedBox16,
          kFastSizedBox16,
          FastPlanSummaryCard(
            titleText: 'Premium Version',
            titleColor: color,
            iconBuilder: (context) {
              return LayoutBuilder(builder: (context, constraint) {
                return Icon(
                  Icons.flight_takeoff,
                  size: constraint.biggest.height,
                  color: color,
                );
              });
            },
            footer: FastLink(
              text: 'Restore Purchases',
              textAlign: TextAlign.center,
              onTap: () {
                log('restore Purchases');
              },
            ),
          ),
          kFastSizedBox16,
        ],
      ),
    );
  }
}
