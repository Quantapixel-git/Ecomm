import 'package:flutter/material.dart';

class ReturnPolicyScreen extends StatelessWidget {
  const ReturnPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Return policy',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: policyList.length,
        itemBuilder: (context, index) {
          final item = policyList[index];
          return Padding(
            padding: const EdgeInsets.only(
                top: 12, bottom: 24), // <- added top padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Q number
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        )
                      ],
                    ),
                    child: Text("Q.${index + 1}"),
                  ),
                ),

                // Question title bar
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade700,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    item['qn'],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                ...List.generate(
                  item['ans'].length,
                  (i) => Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                      "Ans. ${item['ans'][i]}",
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        height: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

List policyList = [
  {
    'qn': 'What is electon return policy?',
    'ans': [
      'Our 100% buyer protection program allows for easy returns only for products not as per description/photo on the website and products which you received in damaged/defective/broken condition.',
      'All products must be returned in their original condition along with the bills and labels.'
    ]
  },
  {
    'qn': 'How to raise dispute for an order?',
    'ans': [
      'You can raise a dispute within 7 days of delivery, in either of by sending an email to support@Electon.com with images of broken/defective/damaged products within 7 days of delivery, please mention your order number in the email and sign into your electon account if you are a registered customer (Easy method).',
      'Product after 7 days of delivery return can not accepted.'
    ],
  },
  {
    'qn': 'When will i be refunded?',
    'ans': [
      'Reverse pickup orders we will initiate refund once the item is picked up by our courier partner.',
      'Self ship orders We will refund when your item back from warehouse. The refund amount will be credited within 3 to 5 working days in your electon account.'
    ],
  }
];
