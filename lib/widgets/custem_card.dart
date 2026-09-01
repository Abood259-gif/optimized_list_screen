

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:optimized_list_screen/model/item_modell.dart';

class CustemCard extends StatelessWidget {
  final ItemModel item;

  const CustemCard({
    required this.item,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: item.height,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              SizedBox(
                width: 65,
                height: double.infinity,
                child: CachedNetworkImage(
                  memCacheWidth: 300,  
                  memCacheHeight: 300,
                imageUrl:   item.imageUrl,
                  fit: BoxFit.cover,
                 placeholder: (context, url) => Container(
        color: Colors.grey[200],
        child: const Center(
          child: CircularProgressIndicator(strokeWidth: 2.0),
        ),
      ),
                 errorWidget: (context, url, error) => Container(
        color: Colors.grey[300],
        child: const Icon(Icons.broken_image, color: Colors.grey),
      ),
                ),
              ),

              const SizedBox(width: 14),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(item.subtitle),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}