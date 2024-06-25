import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_drawer.dart';
import 'package:iktsar_app/generated/l10n.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {},
      child: Scaffold(
          key: HomeCubit.get(context)!.scaffoldServicesKey,
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 24),
                      child: Text(
                        S.of(context).Services,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50, top: 24),
                      child: Text(
                        S.of(context).gotoLogin,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 100.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
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
                            child: Column(
                              children: [
                                Image.asset(AssetsData.car),
                                const Spacer(),
                                Text(
                                  'Ride',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 100.h,
                          width: 160.w,
                          decoration: BoxDecoration(
                            color: Theme.of(context).cardColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(24)),
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
                            child: Column(
                              children: [
                                Image.asset(AssetsData.calender),
                                const Spacer(),
                                Text(
                                  'Reserve',
                                  style: Theme.of(context).textTheme.bodySmall,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(24.h),
                  child: IconButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.grey)),
                    iconSize: 30.h,
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      HomeCubit.get(context)!
                          .scaffoldServicesKey
                          .currentState!
                          .openDrawer();
                    },
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
