import 'package:flutter/material.dart';

class CancellationPolicyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cancellation Policy',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black87,
          ),
        ),
        backgroundColor: Colors.grey[200], // Light grey background
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100], // Light grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'You may cancel your order at any time by emailing demo@support.com.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),
            ),

            // Policy Paragraph 2 with background
            Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100], // Light grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Once your order is cancelled, it will be immediately deleted from the service. Since deletion of all data is final, please be sure that you do in fact want to cancel your order before proceeding.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),
            ),

            // Policy Paragraph 3 with background
            Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100], // Light grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'If you cancel the order in the middle of delivery, you will receive a final invoice via email. Once that invoice is paid, you will not be charged again.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),
            ),

            // Policy Paragraph 4 with background
            Container(
              padding: EdgeInsets.all(12.0),
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Colors.grey[100], // Light grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Fraud: Banno may cancel your order if we suspect fraudulent activity (by conviction, settlement, insurance or escrow investigation, or otherwise) in connection with the site.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  height: 1.6,
                ),
              ),
            ),

            SizedBox(height: 24),

            // Note Section with background
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[200], // Light grey background for the note
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Important:',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Please ensure that you really want to cancel your order as deletion is permanent.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
