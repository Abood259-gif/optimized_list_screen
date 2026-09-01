class ItemModel {
  final int id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final double height;

  ItemModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.height,
  });

static List<ItemModel> generate5000Items() {
    return List.generate(5000, (index) {
      final double dynamicHeight = 90.0 + (index % 5) * 20.0;
      
      return ItemModel(
        id: index,
        title: 'Item #$index',
        subtitle: 'Dynamic height: ${dynamicHeight.toInt()}px',
        imageUrl: 'https://picsum.photos/id/${index % 100}/300/${dynamicHeight.toInt()}',
        height: dynamicHeight,
      );
    });
  }

}
