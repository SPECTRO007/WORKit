import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<Payment> {
  String selectedMethod = 'Credit Card';

  final List<String> paymentMethods = ['Credit Card', 'Paypal', 'Bank Transfer'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.close, color: Color(0xFF171312)),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Payment',
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF171312),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 24), // balance icon space
                ],
              ),
            ),

            // Payment Method Title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 4),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Payment Method',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF171312),
                  ),
                ),
              ),
            ),

            // Payment Methods List
            ...paymentMethods.map((method) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: GestureDetector(
                  onTap: () => setState(() => selectedMethod = method),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFE4DFDD)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    child: Row(
                      children: [
                        Radio<String>(
                          value: method,
                          groupValue: selectedMethod,
                          onChanged: (value) => setState(() => selectedMethod = value!),
                          activeColor: const Color(0xFF171312),
                        ),
                        Text(
                          method,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            color: const Color(0xFF171312),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),

            // Transaction Details Title
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Transaction Details',
                  style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF171312),
                  ),
                ),
              ),
            ),

            // Transaction Details
            _buildTransactionRow('Amount', '\$19.99'),
            _buildTransactionRow('Service Fee', '\$0.00'),
            _buildTransactionRow('Total', '\$19.99'),

            const Spacer(),

            // Pay Button
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(48),
                  backgroundColor: const Color(0xFFE8BDAF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Pay \$19.99',
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF171312),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionRow(String title, String amount) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: const Color(0xFF826F68),
            ),
          ),
          Text(
            amount,
            style: GoogleFonts.inter(
              fontSize: 14,
              color: const Color(0xFF171312),
            ),
          ),
        ],
      ),
    );
  }
}
