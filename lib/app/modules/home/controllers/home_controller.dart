import 'package:get/get.dart';
import '../../../data/models/SongModel.dart';
import '../../../data/models/user_model.dart';
import '../../../data/repositories/music_repository.dart';

class HomeController extends GetxController {
  final MusicRepository _musicRepository = Get.find<MusicRepository>();

  final RxList<SongModel> popularSongs = <SongModel>[].obs;

  final RxString searchText = ''.obs;

  final Rx<UserModel> currentUser = UserModel(
          id: '1',
          name: 'John Johnson',
          email: "j@exmapl.com",
          avatar: 'assets/Avatar.jpg')
      .obs;

  @override
  void onInit() {
    super.onInit();
    loadPopularSongs();
  }

  Future<void> loadPopularSongs() async {
    try {
      final songs = await _musicRepository.getPopularSongs();
      popularSongs.assignAll(songs);
    } catch (e) {
      print('Error loading popular songs: $e');
    }
  }

  void onSearchChanged(String value) {
    searchText.value = value;
  }

  void onSongTap(SongModel song) {
    Get.snackbar('Playing', song.title);
  }

  void onViewAllTap() {
    Get.snackbar('View All', "Showing all popular Songs");
  }

  void goToUpcoming() {
    Get.toNamed('/upcoming');
  }
}
