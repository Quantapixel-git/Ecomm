import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GetInTouchPage extends StatelessWidget {
  const GetInTouchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Get in Touch", style: GoogleFonts.poppins()),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),

            /// Contact Cards Row
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: [
                _contactCard(
                  icon: FontAwesomeIcons.locationDot,
                  title: "401 Broadway, 24th floor,\narchland view, London, UK",
                ),
                _contactCard(
                  icon: FontAwesomeIcons.phone,
                  title: "(+001) 123 456 789\n(+1) 123 456 789",
                ),
                _contactCard(
                  icon: FontAwesomeIcons.envelope,
                  title: "demo@support.com\nsupport@spacingtech.com",
                ),
              ],
            ),

            SizedBox(height: 32),

            /// Map Placeholder
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Container(
            //     height: 200,
            //     width: double.infinity,
            //     color: Colors.grey.shade200,
            //     alignment: Alignment.center,
            //     child: Text("Google Map Placeholder",
            //         style: GoogleFonts.poppins(color: Colors.black54)),
            //   ),
            // ),

            // SizedBox(height: 40),

            /// Contact Form Header
            Text(
              "Drop us message",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20),

            /// Form Fields
            _textField(label: "Name"),
            _textField(label: "Email address"),
            _textField(label: "Phone number"),
            _textField(label: "Message", maxLines: 5),

            SizedBox(height: 20),

            /// Send Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text("SEND",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }

  Widget _contactCard({required IconData icon, required String title}) {
    return Container(
      width: 320,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 12,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Colors.deepPurple,
            child: Icon(icon, color: Colors.white, size: 20),
          ),
          SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _textField({required String label, int maxLines = 1}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.poppins(),
          filled: true,
          fillColor: Colors.grey.shade100,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
