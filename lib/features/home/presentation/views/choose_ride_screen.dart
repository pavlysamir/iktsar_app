import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_drawer.dart';
import 'package:iktsar_app/generated/l10n.dart';

class ChooseRideScreen extends StatelessWidget {
  const ChooseRideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {},
      child: Scaffold(
          key: HomeCubit.get(context)!.scaffoldChooseRideKey,
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const Center(
                  child: Text('Home Screen'),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      HomeCubit.get(context)!.changeIsExpanded();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height: 400.h,
                      padding: EdgeInsets.all(16.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(20.h)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10.h,
                            spreadRadius: 5.h,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8.h),
                          Center(
                            child: Container(
                              height: 1.h,
                              width: 80.w,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          const Expanded(child: CusromChooseRideListView()),
                          SizedBox(height: 20.h),
                          CustomButtonLarge(
                              text: S.of(context).confirmDestination,
                              color: kPrimaryKey,
                              textColor: Colors.white,
                              function: () {
                                // customBottomSheet(context);
                              })
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class CusromChooseRideListView extends StatelessWidget {
  const CusromChooseRideListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const Divider(),
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // HomeCubit.get(context)!.isExpanded = true;
            //customBottomSheet(context);
          },
          child: Container(
              height: 60.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.h),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 4,
                    //offset: const Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(AssetsData.car),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Iktsar',
                            style: ThemeData().textTheme.bodySmall,
                          ),
                          SizedBox(height: 2.h),
                          const Text(
                            '9:24pm. 3min away',
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        '40.00R',
                      ),
                    ],
                  ),
                ),
              )),
        );
      },
    );
  }
}
