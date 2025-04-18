import 'package:flutter/material.dart';

class PrivacyPolicyPage extends StatelessWidget {
  final List<String> privacyPoints = [
    "There are many variations of passages of Lorem Ipsum available.",
    "It was popularized in 1960s with the release sheets containing Lorem Ipsum.",
    "Sed ut perspiciatis unde omnis iste natus error sit voluptatem laudantium.",
    "Randomised words which don't look even slightly believable.",
    "Temporibus voluptates repudiandae sint et molestiae non recusandae.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Privacy policy',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Deep Purple Box
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Text(
                  "Our Privacy Policy",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ListView.separated(
                shrinkWrap: true,
                itemCount: privacyPoints.length,
                separatorBuilder: (_, __) => const Divider(
                  color: Color(0xFFE0E0E0),
                  thickness: 1,
                  height: 32,
                ),
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Icon(Icons.stop, size: 8, color: Colors.black54),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          privacyPoints[index],
                          style: const TextStyle(
                            fontSize: 15.5,
                            color: Colors.black87,
                            fontFamily: 'Inter',
                            height: 1.6,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
