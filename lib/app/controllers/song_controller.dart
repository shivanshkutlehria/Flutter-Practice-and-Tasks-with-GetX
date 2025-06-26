import 'package:get/get.dart';
import '../models/SongModel.dart';

class SongController extends GetxController {
  var popularList = <Song>[
    Song(
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        downloads: 3.5),
    Song(
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        downloads: 3.5),
  ].obs;

  var recentlyPlayed = <Song>[
    Song(
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        downloads: 3.5),
    Song(
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        downloads: 3.5),
    Song(
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        downloads: 3.5),
  ].obs;
}
