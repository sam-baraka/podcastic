part of 'home.dart';

class NewPodcastsWidget extends StatelessWidget {
  const NewPodcastsWidget({Key? key}) : super(key: key);

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
