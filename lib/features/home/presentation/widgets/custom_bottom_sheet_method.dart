import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/core/Assets/Assets.dart';
import 'package:iktsar_app/generated/l10n.dart';

void customBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
    ),
    builder: (BuildContext context) {
      return SizedBox(
        height: 700.h,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Row(
                children: [
                  const Icon(Icons.arrow_back),
                  Expanded(
                    child: Center(
                      child: Text(
                        S.of(context).planYourRide,
                        style: ThemeData()
                            .textTheme
                            .labelMedium!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Container(
                  width: 106.w,
                  height: 34.h,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(24.h),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 4,
                        //offset: const Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.person),
                      SizedBox(
                        width: 3.w,
                      ),
                      const Text(
                        'for me',
                        style: TextStyle(color: Colors.black),
                      ),
                      const Icon(Icons.arrow_drop_down_outlined)
                    ],
                  )),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 65.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 16.h,
                            ),
                            Image.asset(AssetsData.indicatorDirection),
                            SizedBox(
                              width: 16.h,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: TextField(
                                    decoration: InputDecoration(
                                      hintText: S.of(context).whreTo,
                                      border: InputBorder.none,
                                      enabledBorder: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      contentPadding: const EdgeInsets.all(0),
                                      isDense: true,
                                      hintStyle:
                                          const TextStyle(color: Colors.grey),
                                    ),
                                  )),
                                  const Divider(),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: S.of(context).whreTo,
                                        border: InputBorder.none,
                                        enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide.none),
                                        contentPadding: const EdgeInsets.all(0),
                                        isDense: true,
                                        hintStyle:
                                            const TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: 4.h,
                  ),
                  Center(
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        color: Colors.black,
                        iconSize: 25,
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
