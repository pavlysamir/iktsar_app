import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/app_router.dart';
import 'package:iktsar_app/core/utils/widgets/custom_go_navigator.dart';
import 'package:iktsar_app/core/utils/widgets/pop_up_dialog.dart';
import 'package:iktsar_app/features/setting/presentation/manager/cubit/profile_cubit.dart';
import 'package:iktsar_app/features/setting/presentation/widgets/custom_item_setting_container.dart';
import 'package:iktsar_app/generated/l10n.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: ProfileCubit.get(context)!.foemEditProfile,
          child: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: EdgeInsets.all(24.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CircleAvatar(
                        // backgroundColor: Colors.black,
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                      const Spacer(),
                      Text('edit Profile Img',
                          style: Theme.of(context).textTheme.bodySmall),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 16.h,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).firstName,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomSettingItemContainer(
                                title: S.of(context).firstName,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).lastName,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              CustomSettingItemContainer(
                                title: S.of(context).lastName,
                              ),
                            ],
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    S.of(context).mobileNum,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomSettingItemContainer(
                    title: S.of(context).mobileNum,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    S.of(context).loginEmail,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomSettingItemContainer(
                    title: S.of(context).loginEmail,
                  ),
                  SizedBox(height: 30.h),
                  Text(
                    S.of(context).password,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomSettingItemContainer(
                    onTap: () {
                      customJustGoNavigate(
                          context: context,
                          path: AppRouter.kResetPasswordScreen);
                    },
                    title: '************',
                  ),
                  SizedBox(height: 30.h),
                  CustomSettingItemContainer(
                    onTap: () {
                      customJustGoNavigate(
                          context: context, path: AppRouter.kSettingScreen);
                    },
                    title: S.of(context).Settings,
                  ),
                  SizedBox(height: 30.h),
                  const CustomSettingItemContainer(
                    title: 'Device Managment',
                  ),
                  SizedBox(height: 30.h),
                  CustomSettingItemContainer(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => PopUpDialog(
                          btn1: 'Confirm Delete Account',
                          btn2: 'Cancel',
                          function2: () {
                            Navigator.pop(context);
                          },
                          context: context,
                          function: () {
                            //SettingsCubit.get(context).changeLanguage();
                            Navigator.pop(context);
                          },
                          title: 'Are you sure you want to Delete Account?',
                          subTitle: '',
                          colorButton1: kPrimaryKey,
                          colorButton2: Colors.white,
                          textColortcolor1: Colors.black,
                          textColortcolor2: Colors.black,
                        ),
                      );
                    },
                    title: 'Delete Account',
                  ),
                ],
              ),
            )),
          ),
        );
      },
    );
  }
}
