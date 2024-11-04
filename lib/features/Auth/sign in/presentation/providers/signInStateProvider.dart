
import 'package:brillo_sportz/features/Auth/sign%20in/presentation/providers/signInState.dart';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart'
    as formFieldValidatorPackage;
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import the common utilities

part 'signInStateProvider.g.dart';

@riverpod
class SignInStateNotifier extends _$SignInStateNotifier {
  @override
  SignInState build() {
    return SignInState(
      userId: null,
      emailFormKey: GlobalKey<FormState>(),
      emailResetFormKey: GlobalKey<FormState>(),
      passwordFormKey: GlobalKey<FormState>(),
      passwordResetFormKey: GlobalKey<FormState>(),
      passwordController: TextEditingController(),
      emailController: TextEditingController(),
      validationCodeController: TextEditingController(),
      isLoading: false,
      obscurePassword: true,
      rememberMe: false,
      emailValidator: formFieldValidatorPackage.EmailValidator(
        errorText: 'Enter a valid email address',
      ),
      passwordValidator: formFieldValidatorPackage.MultiValidator([
        formFieldValidatorPackage.RequiredValidator(
          errorText: 'Password is required',
        ),
        formFieldValidatorPackage.MinLengthValidator(
          8,
          errorText: 'Password must be at least 8 characters long',
        ),
        formFieldValidatorPackage.PatternValidator(
          r'(?=.*?[#?!@$%^&*-])',
          errorText: 'Password must have at least one special character',
        ),
        formFieldValidatorPackage.PatternValidator(
          r'(?=.*?[0-9])',
          errorText: 'Password must have at least one number',
        ),
        formFieldValidatorPackage.PatternValidator(
          r'(?=.*?[A-Z])',
          errorText: 'Password must have at least one uppercase letter',
        ),
        formFieldValidatorPackage.PatternValidator(
          r'(?=.*?[a-z])',
          errorText: 'Password must have at least one lowercase letter',
        ),
      ]),
    );
  }

  String _getEmail() => state.emailController!.text.trim().toLowerCase();
  String _getPassword() => state.passwordController!.text.trim();

  ///To update a state outside its scope.
  ///To update a state outside its scope.
  updateState(SignInState updatedState) {
    state = updatedState;
  }

  void _setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void obscurePassword() {
    state = state.copyWith(obscurePassword: !state.obscurePassword!);
  }

  void rememberMe() {
    state = state.copyWith(rememberMe: !state.rememberMe!);
  }

  Future<void> loginUser(BuildContext context) async {
    _setLoading(true);
    await Future.delayed(Duration(seconds: 3));
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final email = state.emailController!.text;
    final password = state.passwordController!.text;
    await sp.setString('email', email);
    final savedEmail = await sp.getString('email');
    final savedPassword = await sp.getString('password');

    if (email.isNotEmpty &&
        password.isNotEmpty &&
        savedEmail == email &&
        password == savedPassword) {
    } else {
      _setLoading(false);

      // customSnackBar(context, 'Sign in successful', textColor: Colors.green);
    }

    context.push('/dashboard');
    // customSnackBar(context, 'Registered successfully');
    _setLoading(false);
  }
}
