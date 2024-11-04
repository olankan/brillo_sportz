
import 'package:brillo_sportz/core/theme/widgets/customSnackbar/customSnackbar.widget.dart';
import 'package:brillo_sportz/features/Auth/sign%20up/presentation/providers/signUpState.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart'
    as formFieldValidatorPackage;
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signUpStateProvider.g.dart';

@riverpod
class SignUpStateNotifier extends _$SignUpStateNotifier {
  @override
  SignUpState build() {
    return SignUpState(
      userId: null,
      emailFormKey: GlobalKey<FormState>(),
      passwordFormKey: GlobalKey<FormState>(),
      confirmPasswordFormKey: GlobalKey<FormState>(),
      validationCodeFormKey: GlobalKey<FormState>(),
      usernameFormKey: GlobalKey<FormState>(),
      passwordController: TextEditingController(),
      confirmPasswordController: TextEditingController(),
      validationCodeController: TextEditingController(),
      userNameController: TextEditingController(),
      emailController: TextEditingController(),
      isLoading: false,
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
      obscurePassword: true,
      obscureConfirmPassword: true,
      policyAgreement: false,
    );
  }

  ///To update a state outside its scope.
  updateState(SignUpState updatedState) {
    state = updatedState;
  }

  void _setLoading(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }

  void obscurePassword() {
    state = state.copyWith(obscurePassword: !state.obscurePassword!);
  }

  void obscureConfirmPassword() {
    state =
        state.copyWith(obscureConfirmPassword: !state.obscureConfirmPassword!);
  }

  void policyAgreement() {
    state = state.copyWith(policyAgreement: !state.policyAgreement!);
  }

  Future<void> signUpWithEmail(BuildContext context) async {
    _setLoading(true);
    await Future.delayed(Duration(seconds: 2));
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final email = state.emailController!.text;
    final password = state.passwordController!.text;
    final username = state.userNameController!.text;

    if (email.isNotEmpty && password.isNotEmpty && username.isNotEmpty) {
      await sp.setString('email', email);
      await sp.setString('password', password);
      await sp.setString('username', username);
    } else {
      _setLoading(false);
      customSnackBar(context, 'Please fill in your details',
          textColor: Colors.red);
    }

    context.push('/interests');
    customSnackBar(context, 'Registered successfully');
    _setLoading(false);
  }
}
