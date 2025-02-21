import 'package:flutter/material.dart';
import 'package:minimal_music_app/model/song.dart';

class PlaylistProvider extends ChangeNotifier {
  // playlist of songs
  final List<Song> _playlist = [
    Song(
      songName: 'Tango Noir',
      artistName: 'Akina Nakamori',
      albumArtImagePath: 'assets/image/album_artwork_1.jpg',
      audioPath: 'assets/audio_music_1.mp3',
    ),
    Song(
      songName: 'Oshare no Kanjo',
      artistName: 'Hiromi iwasaki',
      albumArtImagePath: 'assets/image/album_artwork_2.jpg',
      audioPath: 'assets/audio_music_2.opus',
    ),
    Song(
      songName: 'Pandora no Kokabo',
      artistName: 'Hiromi Iwasaki',
      albumArtImagePath: 'assets/image/album_artwork_3.jpg',
      audioPath: 'assets/audio_music_3.mp3',
    ),
  ];

  int? _currentSongIndex;

  // Getters
  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  // Setters
  set currentSongIndex(int? newIndex) {
    // update current song index
    _currentSongIndex = newIndex;

    // update UI
    notifyListeners();
  }
}
