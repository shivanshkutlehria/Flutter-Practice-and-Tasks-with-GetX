import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PremiumBanner extends StatelessWidget {
  const PremiumBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF6C63FF), Color(0xFF4CAf50)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5, 15, 30, 0),
            child: Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(horizontal: 40),
              child: 
              Text(
                '40%\nOFF',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  height: 1,
                ),
              )),
              SizedBox(
                height: 5,
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 0, 5, 0), child: 
              Text(
                'Get Unlimited Downloads',
                style: GoogleFonts.inter(
                  color: Colors.white70,
                  fontSize: 12,
                ),
              )),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {},
                child: Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0),child:
                Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF6B6B),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "PREMIUM NOW",
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                )),
              ),
            ],
          ))),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Icon(Icons.person, color: Colors.white, size: 50),
          )
        ],
      ),
    );
  }
}
