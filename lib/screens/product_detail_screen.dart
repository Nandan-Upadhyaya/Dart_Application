import 'package:flutter/material.dart';
import 'package:fluttersecond/screens/widgets/review_card.dart';

import '../models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.product});

  final Product product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final texttheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        children: [
          Hero(
            tag: widget.product.id,
            child: Image.network(widget.product.thumbnail),
          ),
          Text(widget.product.title, style: texttheme.titleLarge),
          const SizedBox(height: 5),
          Text("\$${widget.product.price}", style: texttheme.titleMedium),
          const SizedBox(height: 5),
          Wrap(
            spacing: 5,
            children: [
              for (final tag in widget.product.tags)
                Chip(
                  label: Text(tag),
                  shape: const StadiumBorder(),
                  backgroundColor: colorScheme.primaryContainer,
                  side: const BorderSide(color: Colors.transparent),
                ),
            ],
          ),
          const SizedBox(height: 10),
          Text(widget.product.description, style: texttheme.bodyLarge),
          const SizedBox(height: 20),
          Text("Reviews", style: texttheme.titleLarge),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final review in widget.product.reviews)
                  ReviewCard(review: review),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
