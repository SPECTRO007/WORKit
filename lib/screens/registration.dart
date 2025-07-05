import 'package:flutter/material.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  String userType = "I'm a job seeker";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCF9F8),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFCF9F8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF1D110C)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Create account',
          style: TextStyle(
            color: Color(0xFF1D110C),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // User Type Toggle
              Container(
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4EAE6),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    _buildToggleOption("I'm a job seeker"),
                    _buildToggleOption("I'm an employer"),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Email
              _buildInputField("Email"),
              const SizedBox(height: 12),
              // Password
              _buildInputField("Password", obscure: true),
              const SizedBox(height: 12),
              // Confirm Password
              _buildInputField("Confirm password", obscure: true),
              const SizedBox(height: 20),
              // Create account button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFE7843),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size.fromHeight(48),
                ),
                onPressed: () {},
                child: const Text(
                  'Create account',
                  style: TextStyle(
                    color: Color(0xFF1D110C),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'By creating an account, you agree to our Terms of Service and Privacy Policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA15F45),
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildToggleOption(String label) {
    final isSelected = userType == label;
    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => userType = label),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: isSelected ? const Color(0xFFFCF9F8) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 4,
                    ),
                  ]
                : null,
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? const Color(0xFF1D110C) : const Color(0xFFA15F45),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String placeholder, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: placeholder,
        hintStyle: const TextStyle(color: Color(0xFFA15F45)),
        filled: true,
        fillColor: const Color(0xFFF4EAE6),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}