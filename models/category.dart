/// Model class representing a food category
class Category {
  final String id;
  final String name;
  final String image;
  final String description;

  const Category({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });

  /// Creates a copy of this Category with the given fields replaced
  Category copyWith({
    String? id,
    String? name,
    String? image,
    String? description,
  }) {
    return Category(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}
