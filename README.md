# Advanced TextField

A customizable and validated text field for Flutter applications. Supports email, password, phone number, and numeric validation.

## Features
✅ Customizable text field with validation  
✅ Supports email, password, phone number, and numeric inputs  
✅ Can be used in forms with built-in validation  
✅ Read-only mode support  

## Installation
Add this package to your pubspec.yaml:

yaml
dependencies:
  advanced_textfield: ^0.0.1


Run:

sh
flutter pub get


## Usage
Import the package:

dart
import 'package:advanced_textfield/advanced_textfield.dart';


### Example

dart
AdvancedTextfield(
  hint: "Enter your email",
  controller: TextEditingController(),
  isEmail: true, // Enables email validation
  isPassword: false, // Set true for password fields
  isPhone: false, // Set true for phone number validation
  readOnly: false, // Set true for read-only mode
  errorMessage: "Invalid email format",
);


## Bugs/Requests
If you encounter any problems, feel free to open an issue. If you feel the library is missing a feature, please raise a ticket on GitHub, and I'll look into it. Pull requests are also welcome.

Credits

AdvancedTextField is developed and maintained by [GitHub](https://github.com/Muneef-Nk/advanced_textfield).
