import 'package:flutter/material.dart';
import 'package:minimal_music_app/components/neu_box.dart';
import 'package:minimal_music_app/model/playlist_provider.dart';
import 'package:provider/provider.dart';

class SongPage extends StatelessWidget {
  const SongPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PlaylistProvider>(
      builder: (context, value, child) {

        // get playlist
        final playlist = value.playlist;

        // get current song index
        final currentSong = playlist[value.currentSongIndex ?? 0];
        // return scaffold UI
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 5,
                right: 15,
                bottom: 15,
                left: 15,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // app bar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // back button
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),
                      ),
                      // title
                      Text('Playlist'),
                      // menu bar
                      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    ],
                  ),
                  // album network
                  NeuBox(
                    child: Column(
                      spacing: 10,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            currentSong.albumArtImagePath,
                          ),
                        ),
                        // song and artist name
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // song and artist name
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  currentSong.songName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                                Text(currentSong.artistName),
                              ],
                            ),
                            // heart icon
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // song duration pogress
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // start time
                            Text('00:00'),
                            // suffle icon
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.shuffle),
                            ),
                            // repeat icon
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.repeat),
                            ),
                            // end time
                            Text('4:25'),
                          ],
                        ),
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 0,
                          ),
                        ),
                        child: Slider(
                          min: 0,
                          max: 100,
                          value: 50,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // playback controls
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // skip previous
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: NeuBox(child: Icon(Icons.skip_previous)),
                          ),
                        ),
                        SizedBox(width: 25),
                        // play pause
                        Expanded(
                          flex: 2,
                          child: GestureDetector(
                            onTap: () {},
                            child: NeuBox(child: Icon(Icons.play_arrow)),
                          ),
                        ),
                        SizedBox(width: 25),

                        // skip forward
                        Expanded(
                          child: GestureDetector(
                            onTap: () {},
                            child: NeuBox(child: Icon(Icons.skip_next)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
