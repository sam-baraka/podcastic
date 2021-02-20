part of 'home.dart';

class ForYouWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 200, maxHeight: 200),
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => ForYouCard(),
        separatorBuilder: (context, index) => SizedBox(
          width: 8,
        ),
      ),
    );
  }
}

class ForYouCard extends StatelessWidget {
  String image = TestImages.getRandomImage();

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.fitHeight)),
      ),
    );
  }
}
