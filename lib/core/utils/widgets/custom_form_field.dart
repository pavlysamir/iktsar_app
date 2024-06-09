import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomFormField extends StatelessWidget {
  CustomFormField({
    super.key,
    required this.controller,
    required this.validationMassage,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.prefixIcon,
    this.widget,
    this.isEyeTrue = false,
    this.initialValue,
    this.readOnly = false,
    this.imagePath,
  });

  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  IconButton? suffixIcon;
  Icon? prefixIcon;
  Widget? widget;
  final Function(String value) validationMassage;
  final bool isEyeTrue;
  final String? initialValue;
  final bool? readOnly;
  final String? imagePath; // Path to the image

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        readOnly: readOnly!,
        initialValue: initialValue,
        style: Theme.of(context).textTheme.titleMedium,
        obscureText: isEyeTrue,
        keyboardType: textInputType,
        controller: controller,
        validator: (value) {
          return validationMassage(value!);
        },
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          suffixIcon: suffixIcon,
          filled: true,
          prefixIcon: imagePath != null
              ? Padding(
                  padding:
                      const EdgeInsets.all(8.0), // Adjust padding as needed
                  child: Image.asset(imagePath!),
                )
              : prefixIcon,
          enabledBorder: outlineInputBorder(context),
          focusedBorder: outlineInputBorder(context),
          //errorBorder: outlineInputBorderError(),
          hintText: hintText,
          prefixIconConstraints: const BoxConstraints(
            minWidth: 40,
            minHeight: 40,
          ),
          hintStyle: Styles.textStyle14Grey,
          prefix: widget,
        ),
      ),
    );
  }
}

InputBorder? outlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey.shade50,
    ),
    borderRadius: BorderRadius.circular(10),
  );
}

OutlineInputBorder outlineInputBorderError() {
  return OutlineInputBorder(
    borderSide:
        const BorderSide(color: Colors.red), // Border color changes to red
    borderRadius: BorderRadius.circular(14),
  );
}
