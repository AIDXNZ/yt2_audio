# yt2_audio

A simple package for fetching and playing audio from any YouTube url.

# Using

> Note: this package is still in early development.

### Create an instance

    var yt2Music = YT2Music();

### Play Audio from YouTube Id

Once you have imported the package and instantiated it create a method to start playing audio when called. Like so.

    Future<void> startAudio() async {
    	await yt2Music.playUrl('HyTKsOv7cro');
    }

## To-Do

- [x]  Play audio from YouTube url
- [ ]  Cache audio
- [ ]  query videos
- [ ]