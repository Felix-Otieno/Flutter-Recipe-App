  import 'package:flutter/material.dart'; // Import Flutter material design library.
  import 'screens/home_screen.dart'; // Import the HomeScreen.
  import 'models/recipe.dart'; // Import the Recipe model.

  void main() {
    runApp(RecipeApp()); // Start the app by running the RecipeApp widget.
  }

  // The main RecipeApp widget.
  class RecipeApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      // Define a list of sample recipes.
      final List<Recipe> recipes = [
        Recipe(
          title: 'Spaghetti Bolognese', // Recipe name.
          description: 'A classic Italian pasta dish with rich tomato sauce.', // Short description.
          imageUrl: 'android/assets/download.png', // Example image URL.
        ),
        Recipe(
          title: 'Chicken Curry', // Recipe name.
          description: 'A flavorful and spicy chicken curry.', // Short description.
          imageUrl: 'android/assets/download.png', // Example image URL.
        ),
      ];

      return MaterialApp(
        title: 'Recipe App', // App title shown in the device task manager.
        theme: ThemeData(primarySwatch: Colors.blue), // Set a blue theme.
        home: HomeScreen(recipes: recipes), // Set HomeScreen as the first screen.
      );
    }
  }
