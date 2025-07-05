import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'skilled.dart';
import 'unskilled.dart';

class Jobsplit extends StatelessWidget {
  const Jobsplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back, color: Color(0xFF181210)),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Job Category',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF181210),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24),
                ],
              ),
            ),

            // Select Label
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select a category',
                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF181210),
                  ),
                ),
              ),
            ),

            // Two fixed-height buttons side by side
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: _buildCategoryCard('Skilled Labor', Icons.work),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildCategoryCard('Unskilled Labor', Icons.work_outline),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // Proceed Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFfe8157),
                  minimumSize: const Size(double.infinity, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Proceed',
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF181210),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 8, bottom: 8),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFe7ddda)),
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(icon, color: const Color(0xFF181210), size: 24),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF181210),
              ),
            ),
          ),
        ],
      ),
    );
  }
}