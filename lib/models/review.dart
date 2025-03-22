class Review {
  final int rating;
  final String comment;
  final DateTime dateTime;
  final String reviewerName;
  final String reviewerEmail;

  Review({
    required this.rating,
    required this.comment,
    required this.dateTime,
    required this.reviewerName,
    required this.reviewerEmail,
  });

  static Review fromJson(json) {
    return Review(
      rating: json['rating'],
      comment: json['comment'],
      dateTime: DateTime.parse(json['date']),
      reviewerName: json['reviewerName'],
      reviewerEmail: json['reviewEmail'],
    );
  }
}
