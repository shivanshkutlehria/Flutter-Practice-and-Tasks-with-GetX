import 'package:flutter/material.dart' hide SearchController;
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/search_controller.dart';

class SearchBarr extends GetView<SearchController> {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            controller.requestFocus();
          },
          child: Container(
            height: 60,
            width: 300,
            
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                SizedBox(width: 20,),
                Icon(Icons.search, color: Colors.grey.shade600, size: 25,),
                SizedBox(width: 10,),
                Expanded( 
                  child: Obx(() => TextField(
                    controller: controller.searchController,
                    focusNode: controller.focusNode,
                    decoration: InputDecoration(
                      hintText: controller.isTyping.value ? '' : "Search album, song..",
                      hintStyle: GoogleFonts.inter(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                      ),
                      border: InputBorder.none,
                    ),
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      
                    ),
                    cursorColor: Colors.white,
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 15,),

        Container(
          height: 60,
          width: 55,
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(Icons.tune, color: Colors.grey.shade600,),
        )
      ],
    );
  }
}
