import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AppYoutubePlayer extends StatelessWidget {
  const AppYoutubePlayer({Key? key, required this.controller,}) : super(key: key);
  final YoutubePlayerController controller;

  @override
  Widget build(BuildContext context) {


    return YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,

        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
        ));
  }
}


