import 'package:flutter/material.dart';
import 'package:iktsar_app/features/home/presentation/widgets/list_view_locations_item.dart';

class ListViewlocationsSelect extends StatelessWidget {
  const ListViewlocationsSelect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return const ListViewLocationsItem();
      },
    );
  }
}
