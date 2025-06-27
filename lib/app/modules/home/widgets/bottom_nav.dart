import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNav extends StatelessWidget {
  final int currentindex;
  const BottomNav({Key? key, required this.currentindex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color.fromARGB(180, 26, 26, 26),
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.home, 'Home', 0),
          _buildNavItem(Icons.album, 'Album', 1),
          _buildNavItem(Icons.music_note_rounded, 'My Music', 2),
          _buildNavItem(Icons.person, 'Profile', 3)
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = currentindex == index;

    return GestureDetector(
      onTap: () {
        if (index == 2) {
          Get.toNamed('/upcoming');
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? Color(0xFFFF6B6B) : Colors.grey[500],
            size: 24,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            label,
            style: GoogleFonts.inter(
                color: isSelected ? Color(0xFFFF6B6B) : Colors.grey[500],
                fontSize: 12),
          )
        ],
      ),
    );
  }
}
