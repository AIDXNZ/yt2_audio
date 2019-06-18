library yt2_audio;
import 'package:youtube_extractor/youtube_extractor.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';


class YT2Music {


  AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);
  var extractor = YouTubeExtractor();

  _playUrl(String param) async {
    var data = await extractor.getMediaStreamsAsync(param);
    String url = data.audio.first.url;
    int result = await audioPlayer.play(url);
    if (result == 1) {
      print('Success');
    }
  }


  void playUrl(String param) async {
    await compute(_playUrl(param), param);
    print('Spawned Isolate...');
  }
}
