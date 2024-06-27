import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_small.dart';

class CustomItemTapView extends StatelessWidget {
  const CustomItemTapView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 100, child: Center(child: Text('map'))),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Hy el-riyad',
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text('May 11 .7:48pm'),
          const SizedBox(
            height: 8,
          ),
          const Text('0:00.Canceled'),
          const SizedBox(
            height: 20,
          ),
          CustomButtonSmall(
              width: 122.w,
              function: () {},
              text: 'Rebook',
              borderColor: kPrimaryKey)
        ],
      ),
    );
  }
}
