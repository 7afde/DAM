class Restaurant {
  const Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  int getTotalRatings() {
    return ratings.length;
  }

  // double getAverageRating() {
  //   if (ratings.isEmpty) {
  //     return 0;
  //   }
  //   double sum = 0;
  //   for (double rating in ratings) {
  //     sum += rating;
  //   }
  //   return sum / ratings.length;
  // }

  double getAverageRating() {
    if (ratings.isEmpty) {
      return 0;
    }
    double sum = ratings.reduce((x, y) => x + y);
    return sum / ratings.length;
  }
}

void main() {
  final restaurant = Restaurant(
    name: 'The Good Place',
    cuisine: 'Italian',
    ratings: [4.0, 3.5, 5.0, 4.5, 4.0],
  );

  print('Total ratings: ${restaurant.getTotalRatings()}'); // 5
  print('Average rating: ${restaurant.getAverageRating()}'); // 4.2
}
