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
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
      SongModel(
          id: '2',
          title: 'Blinding Lights',
          artist: 'The Weeknd',
          image: 'lib/app/assets/blinding.png',
          duration: Duration(minutes: 3, seconds: 20),
          downloads: 4.2),
      SongModel(
          id: '3',
          title: 'Dance Monkey',
          artist: 'Tones and I',
          image: 'lib/app/assets/Dance_Monkey.jpg',
          duration: Duration(minutes: 3, seconds: 29),
          downloads: 3.8),
      SongModel(
          id: '4',
          title: 'Uptown Funk',
          artist: 'Mark Ronson ft. Bruno Mars',
          image: 'lib/app/assets/uptown_funk.png',
          duration: Duration(minutes: 3, seconds: 56),
          downloads: 5.1),
      SongModel(
          id: '5',
          title: 'Despacito',
          artist: 'Luis Fonsi ft. Daddy Yankee',
          image: 'lib/app/assets/despacito.jpg',
          duration: Duration(minutes: 4, seconds: 41),
          downloads: 6.2),
      SongModel(
          id: '6',
          title: 'See You Again',
          artist: 'Wiz Khalifa ft. Charlie Puth',
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 58),
          downloads: 4.7),
    ];
  }

  @override
  Future<List<SongModel>> getUpcomingSongs() async {
    await Future.delayed(Duration(milliseconds: 500));

    return [
      SongModel(
          id: '3',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
      SongModel(
          id: '4',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
    ];
  }

  @override
  Future<List<SongModel>> getRecentlyPlayed() async {
    await Future.delayed(Duration(milliseconds: 500));

    return [
      SongModel(
          id: '5',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
      SongModel(
          id: '6',
          title: 'Shape of You',
          artist: 'Ed Sheeran',
          image: 'lib/app/assets/Shape-of-You.jpg',
          duration: Duration(minutes: 3, seconds: 35),
          downloads: 3.5),
    ];
  }
}
