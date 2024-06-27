import 'package:flutter/material.dart';

import 'package:iktsar_app/features/activities/presentation/widgets/custom_item_tapview.dart';
import 'package:iktsar_app/features/activities/presentation/widgets/custom_tap_bar.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: CustomTapBar(context: context),
            title: Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 16),
              child: Column(
                children: [
                  Text(
                    'Activity',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ],
              ),
            )),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 0, bottom: 20, left: 24, right: 24),
            child: TabBarView(
              children: [
                CustomItemTapView(),
                CustomItemTapView(),
                CustomItemTapView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
