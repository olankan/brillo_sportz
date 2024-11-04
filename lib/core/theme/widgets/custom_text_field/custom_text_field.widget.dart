// ignore_for_file: use_super_parameters

import 'package:brillo_sportz/core/theme/theme_helper/theme_helper.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

enum TextFormType {
  text,
  validationCode,
  email,
  password,
  confirmPassword,
  phone,
  search
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.alignment,
    this.inputFormatters,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled,
    this.validator,
    this.maxLength,
    this.onChanged,
    this.onTapSuffix,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  }) : formType = TextFormType.text;
  CustomTextFormField.password({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.obscureText,
    this.maxLength,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.visiblePassword,
        formType = TextFormType.password,
        inputFormatters = [],
        super(
          key: key,
        );
  CustomTextFormField.confirmPassword({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.obscureText,
    this.maxLength,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.visiblePassword,
        formType = TextFormType.confirmPassword,
        inputFormatters = [],
        super(
          key: key,
        );
  const CustomTextFormField.numberOnly({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.obscureText,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.maxLines,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.number,
        formType = TextFormType.phone,
        maxLength = 13,
        super(
          key: key,
        );
  const CustomTextFormField.otp({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.obscureText,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.maxLines,
    this.maxLength,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.number,
        formType = TextFormType.phone,
        super(
          key: key,
        );
  const CustomTextFormField.validationCode({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.obscureText,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.maxLines,
    this.maxLength,
    this.inputFormatters,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.text,
        formType = TextFormType.validationCode,
        super(
          key: key,
        );
  CustomTextFormField.emailAddress({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.obscureText,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.maxLength,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.emailAddress,
        formType = TextFormType.email,
        inputFormatters = [],
        super(
          key: key,
        );
  CustomTextFormField.search({
    Key? key,
    this.alignment,
    this.decoration,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.label,
    this.isRequired = false,
    this.autofocus = false,
    this.textStyle,
    this.textInputAction = TextInputAction.next,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.obscureText,
    this.filled,
    this.validator,
    this.onChanged,
    this.onTapSuffix,
    this.maxLength,
    this.onFieldSubmitted,
    this.formKey, this.enabledBorderSideColor,
  })  : textInputType = TextInputType.text,
        formType = TextFormType.search,
        inputFormatters = [],
        super(
          key: key,
        );

  final TextFormType? formType;

  final bool? isRequired;

  final String? label;

  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final InputDecoration? decoration;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final int? maxLength;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final Color? enabledBorderSideColor;
  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final Function(String? value)? onChanged;

  final Function(String)? onFieldSubmitted;

  final Function()? onTapSuffix;

  final List<TextInputFormatter>? inputFormatters;

  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      child: Form(
        key: formKey,
        // autovalidateMode: AutovalidateMode.onUserInteraction,
        child: TextFormField(
          // textAlign:
          // formType == TextFormType.validationCode
          //     ? TextAlign.center
          //     : TextAlign.start,

          cursorColor: ThemeHelper(context).tertiary,
          maxLength: maxLength,
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode,
          onTapOutside: (event) {
            if (focusNode != null) {
              focusNode?.unfocus();
            } else {
              FocusManager.instance.primaryFocus?.unfocus();
            }
          },

          inputFormatters: inputFormatters,
          decoration: decoration ?? _decoration(context),
          style: textStyle,
          obscureText: obscureText ?? false,
          obscuringCharacter: '•',
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          validator: validator,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }

  _decoration(BuildContext context) => InputDecoration(
        prefixIconConstraints: prefixConstraints,
        // suffixIconConstraints: suffixIconConstraints,
        hintText: hintText,

        icon: null,
        iconColor: null,
        label: null,
        labelText: null,
        labelStyle: null,
        floatingLabelStyle: null,
        helperText: null,
        helperStyle: null,
        helperMaxLines: null,
        hintStyle: null,
        hintTextDirection: null,
        hintMaxLines: null,
        hintFadeDuration: null,
        error: null,
        errorText: null,
        errorStyle: null,
        errorMaxLines: null,
        floatingLabelBehavior: null,
        floatingLabelAlignment: null,
        isCollapsed: null,
        isDense: null,
        contentPadding: null,
        prefixIcon: null,
        prefix: prefix,
        prefixText: null,
        prefixStyle: null,
        prefixIconColor: null,
        suffixIcon: null,
        suffix: formType == TextFormType.password ||
                formType == TextFormType.confirmPassword
            ? GestureDetector(
                onTap: onTapSuffix,
                child: obscureText ?? false
                    ? Icon(EvaIcons.eye,
                        size: 15.r, color: PrimaryColors.neutral60)
                    : Icon(EvaIcons.eyeOff,
                        size: 15.r, color: PrimaryColors.neutral60))
            : null,
        suffixText: null,
        suffixStyle: null,
        suffixIconColor: ThemeHelper(context).tertiary,
        suffixIconConstraints: null,
        counter: null,
        counterText: null,
        counterStyle: null,
        filled: null,
        fillColor: null,
        focusColor: null,
        hoverColor: null,
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: PrimaryColors.red,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: PrimaryColors.primary,
            )),
        //  UnderlineInputBorder(
        //     borderSide: BorderSide(
        //   color: formType == TextFormType.search
        //       ? PrimaryColors.transparent
        //       : ThemeHelper(context).tertiary,
        //   width: 2,
        // )),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: PrimaryColors.red,
            )),
        disabledBorder: null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: enabledBorderSideColor ?? PrimaryColors.primary,
          ),
        ),
        border: null,
        semanticCounterText: null,
        alignLabelWithHint: null,
      );
}