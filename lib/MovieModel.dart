class Movie{
  final String name;
  final String thumbUrl;
  final String videoUrl;
  final Duration duration;

  const Movie({
  required this.name,
  required this.thumbUrl,
  required this.videoUrl,
  required this.duration});

  static const List<Movie> movies=[
    Movie(
     name: 'Bowl Meditation',
     videoUrl: 'https://youtu.be/Kk7--moip1w',
     thumbUrl: 'https://images.pexels.com/photos/6914828/pexels-photo-6914828.jpeg?auto=compress&cs=tinysrgb&w=1200',
     duration: Duration(hours:1,minutes:5),
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'https://youtu.be/aIIEI33EUqI',
        thumbUrl: 'https://images.pexels.com/photos/8436746/pexels-photo-8436746.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'https://youtu.be/dE8jLpdx2qw',
        thumbUrl: 'https://images.pexels.com/photos/6962625/pexels-photo-6962625.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'https://youtu.be/dE8jLpdx2qw',
        thumbUrl: 'https://images.pexels.com/photos/13865928/pexels-photo-13865928.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'https://player.vimeo.com/external/449315246.sd.mp4?s=fa35afcd9e437e5a08b06ff44a8bb7720baf265f&profile_id=164&oauth2_token_id=57447761',
        thumbUrl: 'https://images.pexels.com/photos/8032744/pexels-photo-8032744.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
      name: 'BIG BUCK BUNNY',
      videoUrl: 'https://www.youtube.com/watch?v=inpok4MKVLM',
      thumbUrl: 'https://images.pexels.com/photos/6962625/pexels-photo-6962625.jpeg?auto=compress&cs=tinysrgb&w=1200',
      duration: Duration(hours:1,minutes:5)
  ),
  Movie(
      name: 'BIG BUCK BUNNY',
      videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
      thumbUrl: 'https://images.pexels.com/photos/6914828/pexels-photo-6914828.jpeg?auto=compress&cs=tinysrgb&w=1200',
      duration: Duration(hours:1,minutes:5)
   ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/8436746/pexels-photo-8436746.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/6962625/pexels-photo-6962625.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/13865928/pexels-photo-13865928.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/8032744/pexels-photo-8032744.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/6962625/pexels-photo-6962625.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
    Movie(
        name: 'BIG BUCK BUNNY',
        videoUrl: 'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
        thumbUrl: 'https://images.pexels.com/photos/6914828/pexels-photo-6914828.jpeg?auto=compress&cs=tinysrgb&w=1200',
        duration: Duration(hours:1,minutes:5)
    ),
  ];
}
