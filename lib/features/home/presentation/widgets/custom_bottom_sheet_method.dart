import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/generated/l10n.dart';

void customBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 12.h),
          Center(
            child: Container(
              height: 1.h,
              width: 80.w,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 16.h),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              children: [
                const Icon(Icons.arrow_back),
                Expanded(
                  child: Center(
                    child: Text(
                      S.of(context).planYourRide,
                      style: ThemeData().textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Additional field 1',
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: 16.h),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Additional field 2',
              border: InputBorder.none,
            ),
          ),
          SizedBox(height: 16.h),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Additional field 3',
              border: InputBorder.none,
            ),
          ),
        ],
      );
    },
  );
}
