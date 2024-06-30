import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_container_home_actions.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_create_ride_container.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_item_home.dart';
import 'package:iktsar_app/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Image.asset(AssetsData.iktsarLogoLogin, scale: 1.5),
            SizedBox(height: 20.h),
            const CustomCreateRideContainer(),
            SizedBox(height: 20.h),
            Text(
              S.of(context).Settings,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: CustomContainerHomeActons(
                    onTap: () {},
                    image: AssetsData.car,
                    title: 'Ride',
                  ),
                ),
                Expanded(
                  child: CustomContainerHomeActons(
                    onTap: () {
                      customJustGoNavigate(
                          context: context, path: AppRouter.kHomeScreen);
                    },
                    image: AssetsData.travelMan,
                    title: 'Travel',
                  ),
                ),
                Expanded(
                  child: CustomContainerHomeActons(
                    onTap: () {},
                    image: AssetsData.calender,
                    title: 'Reserve',
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Text(
              S.of(context).Settings,
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SizedBox(height: 16.h),
            const Row(children: [
              Expanded(
                child: CustomItemHomeFeature(
                  image: AssetsData.imageHome1,
                  title: 'Iktsar Travel rides',
                ),
              ),
              Expanded(
                child: CustomItemHomeFeature(
                  image: AssetsData.imageHome2,
                  title: 'Add a stop or 5',
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
