import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A customizable text field with built-in validation for various input types.
class AdvancedTextfield extends StatelessWidget {
  /// The hint text displayed inside the field.
  final String hint;

  /// The text controller for the input field.
  final TextEditingController controller;

  /// The controller for confirming matching input (e.g., password confirmation).
  final TextEditingController? confirmPasswordController;

  /// An optional error message displayed on validation failure.
  final String? errorMessage;

  /// Enables validation for an email input field.
  final bool isEmail;

  /// Enables validation for a password input field.
  final bool isPassword;

  /// Enables validation for a phone number input field (10 digits).
  final bool isPhone;

  /// Makes the text field read-only.
  final bool readOnly;

  /// Requires the field to be filled before submission.
  final bool isRequired;

  /// Restricts the field to accept only numeric values.
  final bool onlyNumbers;

  /// The number of lines the field should display.
  final int lines;

  /// Creates a validated text field widget.
  const AdvancedTextfield({
    super.key,
    required this.hint,
    required this.controller,
    this.errorMessage,
    this.confirmPasswordController,
    this.isEmail = false,
    this.isPassword = false,
    this.isPhone = false,
    this.readOnly = false,
    this.isRequired = false,
    this.onlyNumbers = false,
    this.lines = 1,
  });

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> isObscured = ValueNotifier<bool>(isPassword);

    return Padding(
      padding: const EdgeInsets.all(8),
      child: ValueListenableBuilder<bool>(
        valueListenable: isObscured,
        builder: (context, isObscuredValue, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    hint,
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  if (isRequired)
                    const Text(
                      '*',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                ],
              ),
              TextFormField(
                controller: controller,
                readOnly: readOnly,
                maxLines: lines,
                maxLength: isPhone ? 10 : null,
                buildCounter: (_,
                        {int? currentLength,
                        int? maxLength,
                        bool? isFocused}) =>
                    null,
                obscureText: isObscuredValue,
                keyboardType: isPhone || onlyNumbers
                    ? TextInputType.number
                    : TextInputType.text,
                inputFormatters: isPhone || onlyNumbers
                    ? [FilteringTextInputFormatter.digitsOnly]
                    : [],
                validator: (value) {
                  if (isRequired && (value == null || value.isEmpty)) {
                    return errorMessage ?? 'This field is required';
                  }
                  if (isEmail &&
                      !RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                          .hasMatch(value!)) {
                    return errorMessage ?? 'Please enter a valid email address';
                  }
                  if (isPassword && value!.length < 8) {
                    return errorMessage ??
                        'Password must be at least 8 characters long';
                  }
                  if (isPhone && !RegExp(r'^\d{10}$').hasMatch(value!)) {
                    return errorMessage ??
                        'Phone number must be exactly 10 digits';
                  }
                  if (onlyNumbers && !RegExp(r'^\d+$').hasMatch(value!)) {
                    return errorMessage ?? 'Only numeric values are allowed';
                  }
                  if (confirmPasswordController != null &&
                      value != confirmPasswordController!.text) {
                    return errorMessage ?? 'Passwords do not match';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  hintText: hint,
                  hintStyle:
                      TextStyle(color: Colors.grey.shade600, fontSize: 14),
                  suffixIcon: isPassword
                      ? IconButton(
                          icon: Icon(isObscuredValue
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () => isObscured.value = !isObscuredValue,
                        )
                      : null,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
