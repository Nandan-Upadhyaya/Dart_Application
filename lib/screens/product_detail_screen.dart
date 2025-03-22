import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.title)),
      body: ListView(
        children: [
          Hero(
            tag: widget.product.id,
            child: Image.network(widget.product.thumbnail),
          ),
        ],
      ),
    );
  }
}
