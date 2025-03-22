import 'package:flutter/material.dart';
import 'package:fluttersecond/screens/product_detail_screen.dart';

import '../../models/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ProductDetailScreen(product: widget.product);
            },
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag: widget.product.id,
                    child: Image.network(widget.product.thumbnail),
                  ),
                ),
              ),
              Text(
                widget.product.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text("\$${widget.product.price}"),
            ],
          ),
        ),
      ),
    );
  }
}
