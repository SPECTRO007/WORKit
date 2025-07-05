import 'package:flutter/material.dart';

class SkilledLabour extends StatelessWidget {
  SkilledLabour({super.key});

  final List<Map<String, String>> jobs = [
    {
      'title': 'Carpentry Job',
      'address': '123 Main St, Anytown',
      'image': 'https://lh3.googleusercontent.com/aida-public/AB6AXuCBhYF6yaWNT82OmVr_tWABRAujwY9f-iivY3dTlMnxByzTwqK1TMDjuHplSwfv17z23eDtzWxyNYjVvoUzC38Vu85uqwP63oD1EuEtRBe7LUy8za2FAHVZiLGdO6AAdnKvTJp3dd6MrxXYxu4ro0JoVR3wkARZ2YCETOzm0corxqZ-CZogwOMxm3JQYnyxzQvS7PosoW2iSOAutUPDdoeWHcjjl6SRhytddUxZXj0Er4Ly3LPzZtF3i9clKJmxCWcdFPHjGFrHMYM',
    },
    {
      'title': 'Plumbing Job',
      'address': '456 Oak Ave, Anytown',
      'image': 'https://lh3.googleusercontent.com/aida-public/AB6AXuAktfaQgIZR5ScVh0utpi5jS5m-jIsGHfaVHAztTbiwpUM-DebZa_Pqp9XLa7uu4mL1FajrnycUE4WKuZ3ItW6zlJHSxNAEomSlTTuK9OsSAwlOO5Y8wZnae_1DM9bnUMZP58XR9JShPWWB0Fs13YnCF3GFtEn6bMyS2KZXwPaUNymg8nPhXodSck4x9QaN1FjdRuv0hDYot6H_NaROY0OLBwEBAHK1SHS3mATX0zyNKwN72hc2ZcbiNAihVhFmxl771KvxBn_Z_bI',
    },
    {
      'title': 'Electrical Job',
      'address': '789 Pine Ln, Anytown',
      'image': 'https://lh3.googleusercontent.com/aida-public/AB6AXuCKPNqmWyCHtOfbcpkIhFJxwTliH_o43CLV6jm4U1tf2YPITF8Kc8reZvVsTLcNZmVIMmri0aKPtZokYJNbPMnb7P5pojj230u0QQAr8tCdvqlKEg3BK4Pp1y3cETrWunopcBLA8AoAYnfe1rnomA5uXbfarNCuPiNteMMGxEQCx05hKIIz8zDhrQkB8khr4wYWYJ4NGNkbSyk1hhBPJyuZx-x4YE83ZwmU-5it1h3QWii1O2z_RGiLcgT5z3RiRA415yEkCZzYYSk',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Color(0xFF181311)),
                  const Expanded(
                    child: Center(
                      child: Text(
                        'Skilled Labour',
                        style: TextStyle(
                          color: Color(0xFF181311),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24), // Placeholder to align text center
                ],
              ),
            ),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: const Icon(Icons.search, color: Color(0xFF886C63)),
                  filled: true,
                  fillColor: const Color(0xFFF4F1F0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  hintStyle: const TextStyle(color: Color(0xFF886C63)),
                ),
              ),
            ),

            // Category filter
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: Row(
                children: [
                  _buildFilterChip('All'),
                  _buildFilterChip('Carpentry'),
                  _buildFilterChip('Plumbing'),
                  _buildFilterChip('Electrical'),
                ],
              ),
            ),

            // Job cards
            Expanded(
              child: ListView.builder(
                itemCount: jobs.length,
                itemBuilder: (context, index) {
                  final job = jobs[index];
                  return ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        job['image']!,
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      job['title']!,
                      style: const TextStyle(fontWeight: FontWeight.w500, color: Color(0xFF181311)),
                    ),
                    subtitle: Text(
                      job['address']!,
                      style: const TextStyle(color: Color(0xFF886C63)),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color(0xFF181311),
        unselectedItemColor: const Color(0xFF886C63),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.work), label: 'My Jobs'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Chip(
        label: Text(
          label,
          style: const TextStyle(color: Color(0xFF181311), fontSize: 14),
        ),
        backgroundColor: const Color(0xFFF4F1F0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
