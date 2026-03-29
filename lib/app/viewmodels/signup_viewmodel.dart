import 'package:flutter/material.dart';
import 'package:validatorless/validatorless.dart';

class SignupViewmodel extends ChangeNotifier {
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool obscurePassword = true;
  bool obscureConfirmPassword = true;
  bool isLoading = false;

  String? nameValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('Nome é obrigatório'),
      Validatorless.min(3, 'Nome deve ter pelo menos 3 caracteres'),
    ])(value);
  }

  String? emailValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('Email é obrigatório'),
      Validatorless.email('Digite um email válido'),
    ])(value);
  }

  String? passwordValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('Senha é obrigatória'),
      Validatorless.min(6, 'A senha precisa de no mínimo 6 caracteres'),
    ])(value);
  }

  String? confirmPasswordValidator(String? value) {
    return Validatorless.multiple([
      Validatorless.required('Confirmação de senha é obrigatória'),
      Validatorless.compare(passwordController, 'As senhas não coincidem'),
    ])(value);
  }

  void togglePasswordVisibility() {
    obscurePassword = !obscurePassword;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    obscureConfirmPassword = !obscureConfirmPassword;
    notifyListeners();
  }

  Future<bool> signup() async {
    if (!formKey.currentState!.validate()) {
      return false;
    }

    isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(seconds: 2));

    isLoading = false;
    notifyListeners();


    return true;
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
