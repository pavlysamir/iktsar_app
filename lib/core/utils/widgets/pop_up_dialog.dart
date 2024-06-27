import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iktsar_app/constants.dart';
import 'package:iktsar_app/core/utils/widgets/custom_button_large.dart';

class PopUpDialog extends StatelessWidget {
  const PopUpDialog(
      {super.key,
      required this.context,
      required this.function,
      required this.title,
      required this.subTitle,
      this.colorButton1 = kPrimaryKey,
      this.textColortcolor1 = Colors.white,
      this.colorButton2 = kPrimaryKey,
      this.textColortcolor2 = Colors.white,
      required this.function2,
      required this.btn1,
      required this.btn2});
  final BuildContext context;
  final Function() function;
  final String title;
  final String subTitle;
  final Color colorButton1;
  final Color colorButton2;
  final Color textColortcolor1;
  final Color textColortcolor2;
  final Function() function2;
  final String btn1;
  final String btn2;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      alignment: Alignment.center,
      actionsAlignment: MainAxisAlignment.center,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20.h,
          ),
          subTitle.isEmpty
              ? const SizedBox()
              : Text(
                  subTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                )
        ],
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 0),
          child: Column(
            children: [
              CustomButtonLarge(
                text: btn1,
                textColor: Colors.white,
                color: colorButton1,
                function: function,
              ),
              SizedBox(height: 5.h),
              TextButton(
                onPressed: function2,
                child: Text(
                  btn2,
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.black),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
