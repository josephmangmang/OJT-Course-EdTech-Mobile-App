import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AppYoutubePlayer extends StatelessWidget {
  const AppYoutubePlayer({Key? key, required this.video}) : super(key: key);
  final String video;

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(video)!,
        flags: const YoutubePlayerFlags(
          autoPlay: false,

        ));

    return YoutubePlayer(
      controller: controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.red,
      progressColors: const ProgressBarColors(playedColor: Colors.red,)
    );
  }
}
