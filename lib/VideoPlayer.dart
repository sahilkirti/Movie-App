// import 'package:flutter/material.dart';
// import 'package:better_player/better_player.dart';
// import 'package:new_video/MovieModel.dart';
//
//
// class VideoPlayerWidget extends StatefulWidget
// {
//   final Movie movie;
// //  VideoPlayerWidget({ required this.movie,});
//   const VideoPlayerWidget({Key? key,required this.movie}): super(key:key);
//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
//
// }
//
// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late BetterPlayerController _betterPlayerController;
//   final GlobalKey _betterPlayerKey = GlobalKey();
//
//   @override
//   void initState() {
//   const  BetterPlayerConfiguration betterPlayerConfiguration = BetterPlayerConfiguration(
//         aspectRatio: 16 / 9,
//         fit: BoxFit.contain
//     );
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network,
//         widget.movie.videoUrl
//
//     );
//     _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
//     _betterPlayerController.setupDataSource(dataSource);
//     _betterPlayerController.setBetterPlayerGlobalKey(_betterPlayerKey);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 8,),
//           Expanded(child: AspectRatio(
//             aspectRatio: 16 / 9,
//             child: BetterPlayer(
//               key: _betterPlayerKey,
//               controller: _betterPlayerController,),
//           ),),
//           //  Text('butterfly',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 45),)
//         ],),
//     );
//   }
// }
//

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';
// import 'package:new_video/MovieModel.dart';
//
// class VideoPlayerWidget extends StatefulWidget {
//   final Movie movie;
//
//   const VideoPlayerWidget({Key? key,required this.movie}): super(key:key);
//
//   @override
//   _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
// }
//
// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late VideoPlayerController _videoPlayerController;
//   late ChewieController _chewieController;
//
//   @override
//   void initState() {
//     super.initState();
//     _videoPlayerController = VideoPlayerController.network(widget.movie.videoUrl);
//     _chewieController = ChewieController(
//       videoPlayerController: _videoPlayerController,
//       autoPlay: true,
//       looping: false,
//       aspectRatio: 16/9,
//
//
//     );
//   }
//   @override
//   void dispose() {
//     _videoPlayerController.dispose();
//     _chewieController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 8,),
//           Expanded(child: AspectRatio(
//             aspectRatio: 16 / 9,
//             child: Chewie(
//               controller: _chewieController,
//             ),
//           ),),
//           //  Text('butterfly',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 45),)
//         ],),
//     );
//
//   }
// }
//

//
// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:new_video/MovieModel.dart';
//
// class VideoPlayerWidget extends StatefulWidget {
//   final Movie movie;
//
//   const VideoPlayerWidget({Key? key, required this.movie}) : super(key: key);
//
//   @override
//   _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
// }
//
// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late YoutubePlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     String videoId = YoutubePlayer.convertUrlToId(widget.movie.videoUrl)!;
//     _controller = YoutubePlayerController(
//       initialVideoId: videoId,
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//         isLive: false,
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           const SizedBox(height: 8,),
//           Expanded(
//             child: YoutubePlayer(
//               controller: _controller,
//               showVideoProgressIndicator: true,
//               progressIndicatorColor: Colors.blueAccent,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:new_video/MovieModel.dart';

class VideoPlayerWidget extends StatefulWidget {
  final Movie movie;

  const VideoPlayerWidget({Key? key,required this.movie}): super(key:key);

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    String videoId = YoutubePlayer.convertUrlToId(widget.movie.videoUrl)!;
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 8,),
          Expanded(
            child: YoutubePlayer(
              controller: _youtubePlayerController,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
