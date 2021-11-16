part of 'home.dart';

// ignore: use_key_in_widget_constructors
class ForYouWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minHeight: 200, maxHeight: 200),
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => PodcasterWidget(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 8,
        ),
      ),
    );
  }
}
