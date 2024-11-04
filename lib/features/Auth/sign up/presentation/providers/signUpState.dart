// ignore_for_file: empty_constructor_bodies, prefer_const_constructors, unnecessary_this

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpState extends Equatable {
  final GlobalKey<FormState>? emailFormKey;
  final GlobalKey<FormState>? usernameFormKey;
  final GlobalKey<FormState>? passwordFormKey;
  final GlobalKey<FormState>? confirmPasswordFormKey;
  final GlobalKey<FormState>? validationCodeFormKey;
  final TextEditingController? emailController;
  final TextEditingController? userNameController;
  final TextEditingController? passwordController;
  final TextEditingController? confirmPasswordController;
  final TextEditingController? validationCodeController;
  bool? obscurePassword;
  bool? obscureConfirmPassword;
  bool? policyAgreement;
  bool? isLoading;
  String? Function(String?)? emailValidator;
  String? Function(String?)? passwordValidator;
  int? userId;

  SignUpState({
    this.validationCodeFormKey,
    this.emailFormKey,
    this.usernameFormKey,
    this.passwordFormKey,
    this.confirmPasswordFormKey,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.emailController,
    this.validationCodeController,
    this.passwordValidator,
    required this.emailValidator,
    required this.userNameController,
    this.obscurePassword,
    this.obscureConfirmPassword,
    this.policyAgreement,
    this.isLoading,
    this.userId,
  });

  SignUpState copyWith({
    GlobalKey<FormState>? emailFormKey,  final GlobalKey<FormState>? usernameFormKey,
    GlobalKey<FormState>? passwordFormKey,
    GlobalKey<FormState>? confirmPasswordFormKey,
    GlobalKey<FormState>? validationCodeFormKey,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    TextEditingController? nameController,
    TextEditingController? confirmPasswordController,
    TextEditingController? validationCodeController,
    bool? obscurePassword,
    bool? obscureConfirmPassword,
    bool? policyAgreement,
    bool? isLoading,
    String? Function(String?)? emailValidator,
    String? Function(String?)? passwordValidator,
    int? userId,
  }) {
    return SignUpState(
      validationCodeFormKey:
          validationCodeFormKey ?? this.validationCodeFormKey,
      validationCodeController:
          validationCodeController ?? this.validationCodeController,
      emailFormKey: emailFormKey ?? this.emailFormKey,
      usernameFormKey: usernameFormKey ??    this.usernameFormKey,
      passwordFormKey: passwordFormKey ?? this.passwordFormKey,
      confirmPasswordFormKey:
          confirmPasswordFormKey ?? this.confirmPasswordFormKey,
      passwordController: passwordController ?? this.passwordController,
      confirmPasswordController:
          confirmPasswordController ?? this.confirmPasswordController,
      emailController: emailController ?? this.emailController,
      userNameController: nameController ?? this.userNameController,
      obscurePassword: obscurePassword ?? this.obscurePassword,
      obscureConfirmPassword:
          obscureConfirmPassword ?? this.obscureConfirmPassword,
      policyAgreement: policyAgreement ?? this.policyAgreement,
      isLoading: isLoading ?? this.isLoading,
      emailValidator: emailValidator ?? this.emailValidator,
      passwordValidator: passwordValidator ?? this.passwordValidator,
      userId: userId ?? this.userId,
    );
  }

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        obscurePassword,
        obscureConfirmPassword,
        validationCodeController,
        policyAgreement,
        isLoading,
        emailValidator,
        passwordValidator,
        userId,
      ];
}