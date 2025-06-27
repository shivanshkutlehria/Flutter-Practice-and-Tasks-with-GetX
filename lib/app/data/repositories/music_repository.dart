import '../models/SongModel.dart';

abstract class MusicRepository {
  Future<List<SongModel>> getPopularSongs();
  Future<List<SongModel>> getUpcomingSongs();
  Future<List<SongModel>> getRecentlyPlayed();
}

class MusicRepositoryImpl implements MusicRepository {
  @override
  Future<List<SongModel>> getPopularSongs() async {
    await Future.delayed(Duration(milliseconds: 500));

    return [
      SongModel(
        id: '1',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
      SongModel(
        id:'2',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
    ];
  }

  @override
  Future<List<SongModel>> getUpcomingSongs() async {
    await Future.delayed(Duration(milliseconds: 500));

    return [
      SongModel(id:'3',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
      SongModel(id:'4',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
    ];
  }
  @override
  Future<List<SongModel>> getRecentlyPlayed() async {
    await Future.delayed(Duration(milliseconds: 500));

    return [
      SongModel(id:'5',
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        duration: Duration(minutes: 3, seconds: 35),
        downloads: 3.5),
    SongModel(id:'6',
        title: 'Shape of You',
        artist: 'Ed Sheeran',
        image: 'assets/Shape-of-You.jpg',
        duration: Duration(minutes: 3, seconds: 35),
        downloads: 3.5),
  ];
}
}
