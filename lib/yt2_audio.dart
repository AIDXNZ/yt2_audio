library yt2_audio;
import 'dart:core';
import 'dart:core';
import 'package:youtube_extractor/youtube_extractor.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:dio/dio.dart';


class YT2Music {

  Dio dio = new Dio();

  downLoad(String param) async {
    var data = await extractor.getMediaStreamsAsync(param);
    String url = data.audio.first.url;
    await dio.download(url, "./test.mp3");    
  }

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
