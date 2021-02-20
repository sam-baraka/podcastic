import 'dart:math';

class TestImages {
  static List<String> images = [
    'assets/images/podcast1.jpg',
    'assets/images/podcast2.jpg',
    'assets/images/podcast3.jpg',
    'assets/images/podcast4.jpg',
    'assets/images/podcast5.jpg',
  ];

  static String getRandomImage() {
    // generates a new Random object
    final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
    return images[_random.nextInt(images.length)];
  }
}
