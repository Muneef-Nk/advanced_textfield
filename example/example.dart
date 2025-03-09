import 'package:flutter/material.dart';
import 'package:advanced_textfield/advanced_textfield.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const RegistrationScreen(),
    );
  }
}

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  // Form key to validate the form
  final _formKey = GlobalKey<FormState>();

  // Controllers for text fields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Registration")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Username Field
              AdvancedTextfield(
                controller: _usernameController,
                hint: "Enter Username",
                isRequired: true, // Validation enabled if true
              ),

              // Phone Number Field
              AdvancedTextfield(
                controller: _phoneController,
                hint: "Enter Phone Number",
                isPhone: true,
                isRequired: true,
              ),

              // Email Field
              AdvancedTextfield(
                controller: _emailController,
                hint: "Enter email address",
              ),

              // Password Field
              AdvancedTextfield(
                controller: _passwordController,
                hint: "Enter Password",
                errorMessage: "Enter your password", // Optional error message
                isPassword: true, // Hides input text
                isRequired: true, // Validation enabled if true
              ),

              // Confirm Password Field
              AdvancedTextfield(
                controller: _confirmPasswordController,
                hint: "Confirm Password",
                errorMessage:
                    "Passwords do not match", // Optional error message
                isPassword: true, // Hides input text
                isRequired: true, // Validation enabled if true
                confirmPasswordController:
                    _passwordController, // Matches with password field
              ),

              // Submit Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, proceed with registration
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text("Registration Successful!")),
                      );
                    }
                  },
                  child: const Text("Register"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
