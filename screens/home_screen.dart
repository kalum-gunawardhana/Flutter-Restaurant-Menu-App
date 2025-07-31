import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/category.dart';
import '../models/food_item.dart';
import '../widgets/category_card.dart';
import '../widgets/food_card.dart';
import '../widgets/responsive_grid.dart';

/// Main home screen that displays categories and food items
/// Features horizontal category scrolling and responsive food grid
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  List<FoodItem> displayedFoodItems = [];

  @override
  void initState() {
    super.initState();
    // Initialize with all food items
    displayedFoodItems = SampleData.getAllFoodItems();
  }

  /// Filters food items based on selected category
  void _filterFoodItems(String categoryName) {
    setState(() {
      selectedCategory = categoryName;
      if (categoryName == 'All') {
        displayedFoodItems = SampleData.getAllFoodItems();
      } else {
        displayedFoodItems = SampleData.getFoodItemsByCategory(categoryName);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restaurant Menu',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          // Search icon button
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // TODO: Implement search functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Search coming soon!')),
              );
            },
          ),
          // Shopping cart icon button
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              // TODO: Implement cart functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Cart coming soon!')),
              );
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Welcome section
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'What would you like to eat?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Choose from our delicious menu',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
              ],
            ),
          ),

          // Categories section
          Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                // Horizontal scrolling category list
                SizedBox(
                  height: 120,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // "All" category card
                      CategoryCard(
                        category: const Category(
                          id: 'all',
                          name: 'All',
                          image:
                              'https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg',
                          description: 'All menu items',
                        ),
                        isSelected: selectedCategory == 'All',
                        onTap: () => _filterFoodItems('All'),
                      ),
                      // Regular category cards from sample data
                      ...SampleData.categories.map(
                        (category) => CategoryCard(
                          category: category,
                          isSelected: selectedCategory == category.name,
                          onTap: () => _filterFoodItems(category.name),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),

          // Food items section
          Expanded(
            child: Container(
              color: const Color(0xFFF8F9FA),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section header with item count
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedCategory == 'All'
                              ? 'All Items'
                              : selectedCategory,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          '${displayedFoodItems.length} items',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Responsive food grid
                  Expanded(
                    child: displayedFoodItems.isEmpty
                        ? const Center(
                            child: Text(
                              'No items found in this category',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                          )
                        : ResponsiveGrid(
                            children: displayedFoodItems
                                .map((item) => FoodCard(foodItem: item))
                                .toList(),
                          ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
