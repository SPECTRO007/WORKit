import 'package:flutter/material.dart';
import 'registration.dart';

class JobLandingScreen extends StatelessWidget {
  const JobLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Dynamically calculate image height based on screen size
    final imageHeight = screenHeight * 0.4; // 40% of screen height

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 251, 251),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // Responsive header image without cropping
                Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(
                      maxWidth: 400,
                      maxHeight: 600,
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(16),
                      width: screenWidth * 0.9, // Responsive width
                      height: imageHeight.clamp(200, 400), // Clamp height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.grey[200], // Placeholder background
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          "https://lh3.googleusercontent.com/aida-public/AB6AXuAx89q9w5MQ1yPW5W_CxriQTreTnumeAYSbFgsKfAKbiCRi5NW4nFVd7F1-200EUVssebRHmftLsTtK0KpEYjeVLJhXdt1nPworz1p6usurrL_6Grs8hrP9WxPE7spshwBwgdVTGTRd4QWr12KNmD5wgwi9GyFN_Sggq82I8C_V8yqNfLMrPgpk6cqV5eh0O_JDsJhVmzmG6gZzQWn9XqD6Nsg2LBFJRH8s9lc3F3pIiNom7CMI-eHBsC_cXsatW45pw2j-lxuKXZk",
                          fit: BoxFit.contain, // No cropping!
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                ),

                // Title
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text(
                    "Want jobs? You got it!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1d110c),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // Description
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Explore thousands of job opportunities and take the next step in your career.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1d110c),
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            // Button section
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const CreateAccountPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFfe7843),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          color: Color(0xFF1d110c),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
