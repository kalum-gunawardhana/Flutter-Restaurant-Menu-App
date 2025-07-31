/// Model class representing a food item in the restaurant menu
class FoodItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final double rating;
  final String image;
  final String category;
  final List<String> ingredients;
  final bool isVegetarian;
  final bool isSpicy;

  const FoodItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.image,
    required this.category,
    required this.ingredients,
    this.isVegetarian = false,
    this.isSpicy = false,
  });

  /// Creates a copy of this FoodItem with the given fields replaced
  FoodItem copyWith({
    String? id,
    String? name,
    String? description,
    double? price,
    double? rating,
    String? image,
    String? category,
    List<String>? ingredients,
    bool? isVegetarian,
    bool? isSpicy,
  }) {
    return FoodItem(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      category: category ?? this.category,
      ingredients: ingredients ?? this.ingredients,
      isVegetarian: isVegetarian ?? this.isVegetarian,
      isSpicy: isSpicy ?? this.isSpicy,
    );
  }
}
