import 'package:flutter/material.dart' hide SearchController;
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bottom_nav.dart';
import '../widgets/premium_banner.dart';
import '../widgets/popular_songs_section.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/search_bar.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello',
                      style: GoogleFonts.inter(
                          color: Colors.grey[400], fontSize: 16),
                    ),
                    Text(
                      controller.currentUser.value.name,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Spacer(),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.orange,
                  child: Text(
                    'JJ',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 15,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: SearchBarr(),
          ),
          SizedBox(height: 36,),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  PremiumBanner(),
                  SizedBox(height: 30,),
                  PopularSongsSection(),
                ],
              ),
            )
          )
        ],
      )),
      bottomNavigationBar: BottomNav(currentindex: 0,),
    );
  }
}
