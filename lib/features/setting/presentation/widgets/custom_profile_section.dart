import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileSection extends StatelessWidget {
  const CustomProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          // backgroundColor: Colors.black,
          radius: 20,
          child: Icon(Icons.person),
        ),
        SizedBox(width: 15.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('bavly samir', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 10.h),
            Text('01271507452',
                style: Theme.of(context).textTheme.headlineMedium),
            SizedBox(height: 10.h),
            Text('bavly@gmail.com',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        const Spacer(),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 16.h,
        ),
      ],
    );
  }
}
