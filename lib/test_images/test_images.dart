import 'dart:math';

class TestImages {
  static List<String> images = [
    'assets/images/podcast1.jpg',
    'assets/images/podcast1.jpg',
    'assets/images/podcast1.jpg',
    'assets/images/podcast1.jpg',
    'assets/images/podcast1.jpg',
  ];

  // generates a new Random object
  static final _random = new Random();

// generate a random index based on the list length
// and use it to retrieve the element
  static String randomImage = images[_random.nextInt(images.length)];
}
