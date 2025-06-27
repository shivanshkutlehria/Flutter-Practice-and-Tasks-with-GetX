class SongModel {
  final String id;
  final String title;
  final String artist;
  final Duration duration;
  final String image;
  final double downloads;

  SongModel(
      {required this.id,
      required this.title,
      required this.artist,
      required this.image,
      required this.downloads,
      required this.duration});
}
