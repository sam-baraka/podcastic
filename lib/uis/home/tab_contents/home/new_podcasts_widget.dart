part of 'home.dart';

class NewPodcastsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
          PodcastTile(),
        ],
      ),
    );
  }
}
