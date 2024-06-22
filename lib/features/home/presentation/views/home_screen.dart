import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';
import 'package:iktsar_app/features/home/presentation/managers/cubit/home_cubit.dart';
import 'package:iktsar_app/features/home/presentation/widgets/custom_drawer.dart';
import 'package:iktsar_app/generated/l10n.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {},
      child: Scaffold(
          key: HomeCubit.get(context)!.scaffoldKey,
          drawer: const CustomDrawer(),
          body: SafeArea(
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                const Center(
                  child: Text('Home Screen'),
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
                          .scaffoldKey
                          .currentState!
                          .openDrawer();
                    },
                    color: Colors.black,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      HomeCubit.get(context)!.changeIsExpanded();
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      height:
                          HomeCubit.get(context)!.isExpanded ? 600.h : 200.h,
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
                          GestureDetector(
                            onTap: () {
                              // HomeCubit.get(context)!.isExpanded = true;
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(10)),
                                ),
                                builder: (BuildContext context) {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
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
                            },
                            child: Container(
                                height: 60.h,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius: BorderRadius.circular(10.h),
                                ),
                                child: Center(
                                  child: ListTile(
                                    iconColor: kPrimaryKey,
                                    textColor: kPrimaryKey,
                                    title: Text(
                                      S.of(context).whreTo,
                                      style: ThemeData().textTheme.bodyLarge,
                                    ),
                                    trailing: const Icon(Icons.search),
                                    leading:
                                        const Icon(Icons.rectangle_rounded),
                                  ),
                                )),
                          ),
                          SizedBox(height: 20.h),
                          CustomButtonLarge(
                              text: 'Done',
                              color: kPrimaryKey,
                              textColor: Colors.white,
                              function: () {})
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
