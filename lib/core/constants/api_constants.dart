import 'package:flutter_dotenv/flutter_dotenv.dart';

mixin RecipeEndpoints {
  static const String searchRecipes = '/recipes/complexSearch';
  static const String searchRecipesByNutrients = '/recipes/findByNutrients';
  static const String searchRecipesByIngredients = '/recipes/findByIngredients';
  static const String getRecipeInformation = '/recipes/{id}/information';
  static const String getRecipeInformationBulk = '/recipes/informationBulk';
  static const String getSimilarRecipes = '/recipes/{id}/similar';
  static const String getRandomRecipes = '/recipes/random';
  static const String autocompleteRecipeSearch = '/recipes/autocomplete';
  static const String tasteById = '/recipes/{id}/tasteWidget.json';
  static const String equipmentById = '/recipes/{id}/equipmentWidget.json';
  static const String priceBreakdownById =
      '/recipes/{id}/priceBreakdownWidget.json';
  static const String ingredientsById = '/recipes/{id}/ingredientWidget.json';
  static const String nutritionById = '/recipes/{id}/nutritionWidget.json';
  static const String getAnalyzedRecipeInstructions =
      '/recipes/{id}/analyzedInstructions';
  static const String extractRecipeFromWebsite = '/recipes/extract';
  static const String analyzeRecipe = '/recipes/analyze';
  static const String summarizeRecipe = '/recipes/{id}/summary';
  static const String analyzeRecipeInstructions =
      '/recipes/analyzeInstructions';
  static const String classifyCuisine = '/recipes/cuisine';
  static const String analyzeRecipeSearchQuery = '/recipes/queries/analyze';
  static const String guessNutritionByDishName = '/recipes/guessNutrition';
}

/// Mixin for Ingredients-related endpoints.
mixin IngredientEndpoints {
  static const String searchIngredients = '/food/ingredients/search';
  static const String getIngredientInformation =
      '/food/ingredients/{id}/information';
  static const String computeIngredientAmount = '/food/ingredients/{id}/amount';
  static const String computeAmounts = '/recipes/convert';
  static const String parseIngredients = '/recipes/parseIngredients';
  static const String computeGlycemicLoad = '/food/ingredients/glycemicLoad';
  static const String autocompleteIngredientSearch =
      '/food/ingredients/autocomplete';
  static const String getIngredientSubstitutes =
      '/food/ingredients/substitutes';
  static const String getIngredientSubstitutesById =
      '/food/ingredients/{id}/substitutes';
}

/// Mixin for Grocery Products-related endpoints.
mixin ProductEndpoints {
  static const String searchGroceryProducts = '/food/products/search';
  static const String searchGroceryProductsByUpc = '/food/products/upc/{upc}';
  static const String getProductInformation = '/food/products/{id}';
  static const String getComparableProducts =
      '/food/products/upc/{upc}/comparable';
  static const String autocompleteProductSearch = '/food/products/suggest';
  static const String classifyGroceryProduct = '/food/products/classify';
  static const String classifyGroceryProductBulk =
      '/food/products/classifyBatch';
  static const String mapIngredientsToGroceryProducts = '/food/ingredients/map';
}

/// Mixin for Menu Items-related endpoints.
mixin MenuItemEndpoints {
  static const String searchMenuItems = '/food/menuItems/search';
  static const String getMenuItemInformation = '/food/menuItems/{id}';
  static const String autocompleteMenuItemSearch = '/food/menuItems/suggest';
}

/// Mixin for Meal Planning-related endpoints.
mixin MealPlanningEndpoints {
  static const String getMealPlanWeek =
      '/mealplanner/{username}/week/{start-date}';
  static const String getMealPlanDay = '/mealplanner/{username}/day/{date}';
  static const String generateMealPlan = '/mealplanner/generate';
  static const String addToMealPlan = '/mealplanner/{username}/items';
  static const String clearMealPlanDay = '/mealplanner/{username}/day/{date}';
  static const String deleteFromMealPlan = '/mealplanner/{username}/items/{id}';
  static const String getMealPlanTemplates =
      '/mealplanner/{username}/templates';
  static const String getMealPlanTemplate =
      '/mealplanner/{username}/templates/{id}';
  static const String addMealPlanTemplate = '/mealplanner/{username}/templates';
  static const String deleteMealPlanTemplate =
      '/mealplanner/{username}/templates/{id}';
  static const String getShoppingList = '/mealplanner/{username}/shopping-list';
  static const String addToShoppingList =
      '/mealplanner/{username}/shopping-list/items';
  static const String deleteFromShoppingList =
      '/mealplanner/{username}/shopping-list/items/{id}';
  static const String generateShoppingList =
      '/mealplanner/{username}/shopping-list/{start-date}/{end-date}';
  static const String computeShoppingList =
      '/mealplanner/shopping-list/compute';
  static const String searchCustomFoods = '/food/customFoods/search';
  static const String connectUser = '/users/connect';
}

/// Mixin for Restaurants-related endpoints.
mixin RestaurantEndpoints {
  static const String searchRestaurants = '/food/restaurants/search';
}

/// Mixin for Wine-related endpoints.
mixin WineEndpoints {
  static const String dishPairingForWine = '/food/wine/dishes';
  static const String winePairing = '/food/wine/pairing';
  static const String wineDescription = '/food/wine/description';
  static const String wineRecommendation = '/food/wine/recommendation';
}

/// Mixin for Miscellaneous endpoints.
mixin MiscEndpoints {
  static const String searchAllFood = '/food/search';
  static const String imageClassificationByFile = '/food/images/classify';
  static const String imageClassificationByUrl = '/food/images/classify';
  static const String imageAnalysisByFile = '/food/images/analyze';
  static const String imageAnalysisByUrl = '/food/images/analyze';
  static const String searchFoodVideos = '/food/videos/search';
  static const String quickAnswer = '/recipes/quickAnswer';
  static const String detectFoodInText = '/food/detect';
  static const String searchSiteContent = '/food/site/search';
  static const String randomFoodJoke = '/food/jokes/random';
  static const String randomFoodTrivia = '/food/trivia/random';
  static const String talkToChatbot = '/food/converse';
  static const String conversationSuggests = '/food/converse/suggest';
}

/// Combined constants class for Spoonacular API endpoints and configurations.
class SpoonacularApiConstants
    with
        RecipeEndpoints,
        IngredientEndpoints,
        ProductEndpoints,
        MenuItemEndpoints,
        MealPlanningEndpoints,
        RestaurantEndpoints,
        WineEndpoints,
        MiscEndpoints {
  /// Base URL for the Spoonacular API.
  static const String baseUrl = 'https://api.spoonacular.com';

  /// Placeholder for the API key, loaded from .env using flutter_dotenv.
  static final String apiKey = dotenv.env['SPOONACULAR_API_KEY'] ?? "";
}
