import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/widgets/pop_up_dialog.dart';
import 'package:iktsar_app/features/setting/presentation/widgets/custom_item_setting_container.dart';
import 'package:iktsar_app/features/setting/presentation/widgets/custom_profile_section.dart';
import 'package:iktsar_app/generated/l10n.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    child: const CustomProfileSection()),
              ),
              SizedBox(height: 24.h),
              Text(
                'Add Home',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8.h),
              const CustomSettingItemContainer(
                icon: Icons.home,
                title: 'Add Home',
              ),
              SizedBox(height: 24.h),
              Text(
                'Add Work',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8.h),
              const CustomSettingItemContainer(
                icon: Icons.work,
                title: 'Add Work',
              ),
              SizedBox(height: 24.h),
              Text(
                'Appearance',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 8.h),
              const CustomSettingItemContainer(
                icon: Icons.dark_mode,
                title: 'Appearance',
              ),
              SizedBox(height: 24.h),
              SizedBox(height: 8.h),
              const CustomSettingItemContainer(
                icon: Icons.privacy_tip,
                title: 'Privacy',
              ),
              SizedBox(height: 50.h),
              TextButton(
                child: Text(
                  'Sign Out',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: kPrimaryKey),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => PopUpDialog(
                      btn1: 'Confirm sign out',
                      btn2: 'Cancel',
                      function2: () {
                        Navigator.pop(context);
                      },
                      context: context,
                      function: () {
                        //SettingsCubit.get(context).changeLanguage();
                        Navigator.pop(context);
                      },
                      title: 'Are you sure you want to sign out',
                      subTitle: '',
                      colorButton1: kPrimaryKey,
                      colorButton2: Colors.white,
                      textColortcolor1: Colors.black,
                      textColortcolor2: Colors.black,
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
