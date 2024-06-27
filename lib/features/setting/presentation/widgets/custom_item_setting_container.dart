import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSettingItemContainer extends StatelessWidget {
  const CustomSettingItemContainer({
    super.key,
    this.icon,
    required this.title,
    this.onTap,
  });
  final IconData? icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50.h,
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 20.h,
              spreadRadius: 2.h,
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(width: 8.w),
            icon == null
                ? const SizedBox()
                : Icon(
                    icon,
                    color: Colors.grey,
                  ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_right_alt,
              color: Colors.black,
            ),
            SizedBox(width: 8.w),
          ],
        ),
      ),
    );
  }
}
