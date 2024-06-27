import 'package:flutter/material.dart';
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
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 20),
          child: TabBarView(
            children: [
              Text('page 1'),
              Text('page 1'),
              Text('page 1'),
            ],
          ),
        ),
      ),
    );
  }
}
