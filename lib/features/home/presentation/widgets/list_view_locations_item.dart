import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewLocationsItem extends StatelessWidget {
  const ListViewLocationsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.add_location_rounded),
        SizedBox(
          width: 10.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Riyad el dmamm',
              style: ThemeData().textTheme.bodySmall,
            ),
            const Text(
              'mit badr khames, el riyad 1, governorate',
            ),
          ],
        ),
      ],
    );
  }
}
