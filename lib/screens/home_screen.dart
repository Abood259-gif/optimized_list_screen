

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:optimized_list_screen/model/item_modell.dart';
import 'package:optimized_list_screen/widgets/custem_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final  List<ItemModel> items;

  @override
  void initState(){
    super.initState();
    items = ItemModel.generate5000Items();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
     cacheExtent: 500,
        slivers: [
          SliverAppBar(
            title: const Text('Optimized List'),
            floating: true,
            snap: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = items[index];
                return CustemCard(item: item);
              },
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}