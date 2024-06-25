import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_container_list_menu.dart';
import 'package:iktsar_app/generated/l10n.dart';

class CustomCreateRideContainer extends StatelessWidget {
  const CustomCreateRideContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: const BorderRadius.all(Radius.circular(24)),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 10.h,
            spreadRadius: 5.h,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Icon(Icons.search),
            SizedBox(width: 10.w),
            Text(
              S.of(context).whreTo,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const Spacer(),
            customContainerListMenu(
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
