import 'package:flutter/material.dart';

import '../../models/review.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key, required this.review});

  final Review review;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (int i = 0; i < review.rating; i++)
              Icon(Icons.star, color: colorScheme.primary),
          ],
        ),
        Text(review.reviewerName, style: textTheme.bodySmall),
        Text(review.reviewerEmail, style: textTheme.titleSmall),
        const SizedBox(height: 5),
        Text(review.comment, style: textTheme.bodyMedium),
      ],
    );
  }
}
