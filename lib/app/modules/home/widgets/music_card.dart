import 'package:flutter/material.dart';
import '../../../data/models/SongModel.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicCard extends StatelessWidget {

  final SongModel song;
  final VoidCallback? onTap;

  const MusicCard({
    required this.song,
    this.onTap,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              song.image,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8,),
          Text(
            song.title,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '${song.downloads} M Downloads',
            style: GoogleFonts.inter(
              color: Colors.white60,
              fontSize: 12
            ),
          )
        ],
      ),
    );
  }
}
