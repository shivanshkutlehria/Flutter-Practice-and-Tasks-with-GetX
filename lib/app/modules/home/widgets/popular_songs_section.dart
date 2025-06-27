import 'package:aoo_ui_using_getx/app/modules/home/widgets/music_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/home_controller.dart';

class PopularSongsSection extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Most popular',
                style: GoogleFonts.inter(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: controller.onViewAllTap,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: Color(0xFFFF6B6B),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'View All',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Obx(() {
          print('Popular songs count: ${controller.popularSongs.length}');
          if (controller.popularSongs.isEmpty) {
            return Container(
              height: 200,
              child: Center(
                child: Text(
                  'Loading songs...',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          }
          return Container(
            height: 500,
            child: GridView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 20),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15),
              itemCount: controller.popularSongs.length,
              itemBuilder: (context, index) {
                print('Building music card for index: $index');
                return MusicCard(
                  song: controller.popularSongs[index],
                  onTap: () {},
                );
              },
            ),
          );
        })
      ],
    );
  }
}
