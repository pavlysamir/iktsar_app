import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/generated/l10n.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).Settings,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: 20.h),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                        Text('bavly samir',
                            style: Theme.of(context).textTheme.bodySmall),
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
                ),
              ),
            ),
            SizedBox(height: 24.h),
            Text(
              'Add Home',
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
