import '../models/food_item.dart';
import '../models/category.dart';

/// Sample data for the restaurant menu app
class SampleData {
  /// List of available food categories
  static const List<Category> categories = [
    Category(
      id: '1',
      name: 'Pizza',
      image: 'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg',
      description: 'Delicious wood-fired pizzas',
    ),
    Category(
      id: '2',
      name: 'Burgers',
      image:
          'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg',
      description: 'Juicy gourmet burgers',
    ),
    Category(
      id: '3',
      name: 'Pasta',
      image:
          'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg',
      description: 'Fresh homemade pasta',
    ),
    Category(
      id: '4',
      name: 'Salads',
      image:
          'https://images.pexels.com/photos/1059905/pexels-photo-1059905.jpeg',
      description: 'Fresh and healthy salads',
    ),
    Category(
      id: '5',
      name: 'Desserts',
      image: 'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg',
      description: 'Sweet treats and desserts',
    ),
  ];

  /// List of food items in the menu
  static const List<FoodItem> foodItems = [
    // Pizza Items
    FoodItem(
      id: '1',
      name: 'Margherita Pizza',
      description:
          'Classic pizza with fresh tomatoes, mozzarella, and basil leaves',
      price: 12.99,
      rating: 4.5,
      image: 'https://images.pexels.com/photos/315755/pexels-photo-315755.jpeg',
      category: 'Pizza',
      ingredients: ['Tomato sauce', 'Mozzarella', 'Fresh basil', 'Olive oil'],
      isVegetarian: true,
    ),
    FoodItem(
      id: '2',
      name: 'Pepperoni Pizza',
      description: 'Traditional pizza topped with spicy pepperoni and cheese',
      price: 15.99,
      rating: 4.7,
      image:
          'https://images.pexels.com/photos/2147491/pexels-photo-2147491.jpeg',
      category: 'Pizza',
      ingredients: ['Tomato sauce', 'Mozzarella', 'Pepperoni', 'Italian herbs'],
      isSpicy: true,
    ),

    // Burger Items
    FoodItem(
      id: '3',
      name: 'Classic Cheeseburger',
      description:
          'Juicy beef patty with cheese, lettuce, tomato, and our special sauce',
      price: 11.99,
      rating: 4.4,
      image:
          'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg',
      category: 'Burgers',
      ingredients: [
        'Beef patty',
        'Cheese',
        'Lettuce',
        'Tomato',
        'Special sauce',
      ],
    ),
    FoodItem(
      id: '4',
      name: 'Chicken Burger',
      description: 'Grilled chicken breast with avocado, bacon, and mayo',
      price: 13.99,
      rating: 4.6,
      image:
          'https://images.pexels.com/photos/2282532/pexels-photo-2282532.jpeg',
      category: 'Burgers',
      ingredients: ['Chicken breast', 'Avocado', 'Bacon', 'Mayo', 'Lettuce'],
    ),

    // Pasta Items
    FoodItem(
      id: '5',
      name: 'Spaghetti Carbonara',
      description: 'Creamy pasta with bacon, eggs, and parmesan cheese',
      price: 14.99,
      rating: 4.8,
      image:
          'https://images.pexels.com/photos/1279330/pexels-photo-1279330.jpeg',
      category: 'Pasta',
      ingredients: ['Spaghetti', 'Bacon', 'Eggs', 'Parmesan', 'Black pepper'],
    ),
    FoodItem(
      id: '6',
      name: 'Penne Arrabbiata',
      description: 'Spicy tomato sauce with garlic, chili, and fresh herbs',
      price: 12.99,
      rating: 4.3,
      image:
          'https://images.pexels.com/photos/1460872/pexels-photo-1460872.jpeg',
      category: 'Pasta',
      ingredients: ['Penne pasta', 'Tomato sauce', 'Garlic', 'Chili', 'Herbs'],
      isVegetarian: true,
      isSpicy: true,
    ),

    // Salad Items
    FoodItem(
      id: '7',
      name: 'Caesar Salad',
      description: 'Crisp romaine lettuce with caesar dressing and croutons',
      price: 9.99,
      rating: 4.2,
      image:
          'https://images.pexels.com/photos/1059905/pexels-photo-1059905.jpeg',
      category: 'Salads',
      ingredients: [
        'Romaine lettuce',
        'Caesar dressing',
        'Croutons',
        'Parmesan',
      ],
      isVegetarian: true,
    ),
    FoodItem(
      id: '8',
      name: 'Greek Salad',
      description: 'Fresh vegetables with feta cheese and olive oil dressing',
      price: 10.99,
      rating: 4.5,
      image:
          'https://images.pexels.com/photos/1213710/pexels-photo-1213710.jpeg',
      category: 'Salads',
      ingredients: [
        'Tomatoes',
        'Cucumber',
        'Feta cheese',
        'Olives',
        'Olive oil',
      ],
      isVegetarian: true,
    ),

    // Dessert Items
    FoodItem(
      id: '9',
      name: 'Chocolate Cake',
      description: 'Rich chocolate cake with chocolate ganache frosting',
      price: 6.99,
      rating: 4.9,
      image: 'https://images.pexels.com/photos/291528/pexels-photo-291528.jpeg',
      category: 'Desserts',
      ingredients: ['Chocolate', 'Flour', 'Sugar', 'Eggs', 'Butter'],
      isVegetarian: true,
    ),
    FoodItem(
      id: '10',
      name: 'Tiramisu',
      description: 'Classic Italian dessert with coffee-soaked ladyfingers',
      price: 7.99,
      rating: 4.7,
      image:
          'https://images.pexels.com/photos/6880219/pexels-photo-6880219.jpeg',
      category: 'Desserts',
      ingredients: ['Mascarpone', 'Coffee', 'Ladyfingers', 'Cocoa', 'Sugar'],
      isVegetarian: true,
    ),
  ];

  /// Get food items by category
  static List<FoodItem> getFoodItemsByCategory(String categoryName) {
    return foodItems.where((item) => item.category == categoryName).toList();
  }

  /// Get all food items
  static List<FoodItem> getAllFoodItems() {
    return foodItems;
  }

  /// Get food item by ID
  static FoodItem? getFoodItemById(String id) {
    try {
      return foodItems.firstWhere((item) => item.id == id);
    } catch (e) {
      return null;
    }
  }
}
