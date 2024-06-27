import 'package:flutter/material.dart';
import '../../../../../constants.dart';

class CustomTapBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTapBar({super.key, required this.context});
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final List<String> titles = <String>[
      'Upcoming',
      'Completed',
      'Cancelled',
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: kPinkKey,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kPrimaryKey),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.transparent,
              indicator: BoxDecoration(
                color: kPrimaryKey,
                borderRadius: BorderRadius.circular(10),
              ),
              //   indicatorColor: kPrimaryKey,
              //    indicatorSize: TabBarIndicatorSize.label,
              labelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.normal),

              tabs: <Widget>[
                Tab(
                  text: titles[0],
                ),
                Tab(
                  text: titles[1],
                ),
                Tab(
                  text: titles[2],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(MediaQuery.of(context).size.height * 0.05 +
          MediaQuery.of(context).size.height * 0.04);
}
