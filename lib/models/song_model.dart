class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song({
    required this.title,
    required this.description,
    required this.url,
    required this.coverUrl,
  });

  static List<Song> songs = [
    Song(
      title: 'SpaceSong',
      description: 'SpaceSong',
      url: 'assets/music/space_song.mp3',
      coverUrl: 'assets/images/space_song.jpeg',
    ),
    Song(
      title: 'Tears For Fears',
      description: 'Tears For Fears',
      url: 'assets/music/tears_for_fears.mp3',
      coverUrl: 'assets/images/tears_for_fears.jpeg',
    ),
    Song(
      title: 'Chamber Of Reflection',
      description: 'Chamber Of Reflection',
      url: 'assets/music/chamber_of_reflection.mp3',
      coverUrl: 'assets/images/chamber_of_reflection.jpeg',
    ),
    Song(
      title: 'Totally',
      description: 'Totally',
      url: 'assets/music/totally.mp3',
      coverUrl: 'assets/images/totally.jpeg',
    ),
  ];
}
