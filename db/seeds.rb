
puts "Cleaning database"
Favourite.destroy_all
Review.destroy_all
User.destroy_all
Recipe.destroy_all

puts "Creating Users"

user = User.create(email: "test@test.com", password: "123456")


puts "Creating recipes..."

# Recipe.create(
#   name: "Classic Grilled Cheese Sandwich",
#   description: "Quick and easy to make, perfect for any meal or snack.",
#   ingredients: "2 slices of bread, 2 slices of cheese, and butter.",
#   cooking_time: 5,
#   servings: 1,
#   difficulty: "Easy",
#   method: "1. Heat over medium heat. 2.Butter one side of each bread. 3.Add cheese.",
# )

# Recipe.create(
#   name: "Peanut BUtter Banana Smoothie",
#   description:"A nutricious and delicious smoothie that's perfect for breakfast or a quick snack.",
#   ingredients:"1 ripe banana, 2 tbsp peanut butter, 1 cup milk (or dairy-free alternative), 1 tbsp honey, and ice cubes.",
#   cooking_time:3,
#   servings:1,
#   difficulty: "Easy",
#   method: "1. Peel the banana and break it into chunks. 2. Place banana chunks, peanut butter, milk, honey (if using), and a handful of ice cubes in a blender. 3. Blend until smooth and creamy. 4. Pour into a glass and serve immediately.",
# )

# Recipe.create(
#   name: "Hummus and Veggie Wrap",
#   description: "A quick and healthy lunch option featuring creamy hummus and crunchy vegetables wrapped in a tortilla.",
#   ingredients: "1 large flour tortilla, 1/4 cup hummus, 1/4 cup shredded carrots, 1/4 cup sliced cucumber, 1/4 cup baby spinach leaves",
#   cooking_time: 20,
#   servings: 2,
#   difficulty: "Easy",
#   method: "1. Spread hummus evenly over the tortilla. 2. Layer shredded carrots, sliced cucumber, and baby spinach leaves on top of the hummus. 3. Roll up the tortilla tightly, tucking in the sides as you go. 4. Slice the wrap in half diagonally. 5. Serve immediately, or wrap in foil for an on-the-go meal.",
# )

# Recipe.create(
#   name: "Oatmeal with Berries",
#   description: "A warm and comforting breakfast option made with hearty oats and sweet, juicy berries.",
#   ingredients: "1/2 cup rolled oats, 1 cup water or milk, 1/2 cup mixed berries (such as strawberries, blueberries, raspberries), 1 tbsp honey or maple syrup (optional)",
#   cooking_time: 15,
#   servings: 1,
#   difficulty: "Easy",
#   method: "1. In a small saucepan, bring water or milk to a boil. 2. Stir in rolled oats and reduce heat to low. 3. Simmer uncovered for 5 minutes, stirring occasionally, until oats are thick and creamy. 4. Remove from heat and let stand for 1-2 minutes. 5. Transfer oatmeal to a bowl and top with mixed berries. 6. Drizzle with honey or maple syrup if desired. 7. Serve hot and enjoy!",
# )

# Recipe.create(
#   name: "Vegetable Stir Fry",
#   description: "A quick and healthy stir fry recipe packed with colorful vegetables and savory flavors.",
#   ingredients: "1 bell pepper, 1 onion, 1 carrot, 1 cup broccoli florets, 2 cloves garlic, 2 tbsp soy sauce, 1 tbsp sesame oil, 1 tsp ginger, 1 tbsp olive oil",
#   cooking_time: 15,
#   servings: 2,
#   difficulty: "Hard",
#   method: "1. Heat olive oil in a large skillet over medium-high heat. 2. Add minced garlic and ginger, stir for 30 seconds. 3. Add sliced bell pepper, onion, carrot, and broccoli. Stir-fry for 5-7 minutes until vegetables are tender-crisp. 4. Drizzle with soy sauce and sesame oil, toss to combine. 5. Serve hot.",
# )

# Recipe.create(
#   name: "Mediterranean Chickpea Salad",
#   description: "A refreshing salad bursting with Mediterranean flavors and protein-rich chickpeas.",
#   ingredients: "1 can chickpeas, 1 cucumber, 1 tomato, 1/4 red onion, 1/4 cup Kalamata olives, 2 tbsp olive oil, 1 tbsp lemon juice, 1 tsp dried oregano, Salt and pepper to taste",
#   cooking_time: 10,
#   servings: 2,
#   difficulty: "Easy",
#   method: "1. Rinse and drain chickpeas, then transfer to a large bowl. 2. Chop cucumber, tomato, red onion, and olives, add to the bowl with chickpeas. 3. In a small bowl, whisk together olive oil, lemon juice, oregano, salt, and pepper. 4. Pour the dressing over the salad and toss to combine. 5. Refrigerate for at least 30 minutes before serving.",
# )

# puts "Creating recipes..."

# Recipe.create(
#   name: "Classic Grilled Cheese Sandwich",
#   description: "Quick and easy to make, perfect for any meal or snack.",
#   ingredients: "2 slices of bread, 2 slices of cheese, and butter.",
#   cooking_time: 5,
#   servings: 1,
#   difficulty: "Easy",
#   method: "1. Heat over medium heat. 2.Butter one side of each bread. 3.Add cheese.",
# )

# Recipe.create(
#   name: "Peanut BUtter Banana Smoothie",
#   description:"A nutricious and delicious smoothie that's perfect for breakfast or a quick snack.",
#   ingredients:"1 ripe banana, 2 tbsp peanut butter, 1 cup milk (or dairy-free alternative), 1 tbsp honey, and ice cubes.",
#   cooking_time:3,
#   servings:1,
#   difficulty: "Easy",
#   method: "1. Peel the banana and break it into chunks. 2. Place banana chunks, peanut butter, milk, honey (if using), and a handful of ice cubes in a blender. 3. Blend until smooth and creamy. 4. Pour into a glass and serve immediately.",
# )

# Recipe.create(
#   name: "Hummus and Veggie Wrap",
#   description: "A quick and healthy lunch option featuring creamy hummus and crunchy vegetables wrapped in a tortilla.",
#   ingredients: "1 large flour tortilla, 1/4 cup hummus, 1/4 cup shredded carrots, 1/4 cup sliced cucumber, 1/4 cup baby spinach leaves",
#   cooking_time: 20,
#   servings: 2,
#   difficulty: "Easy",
#   method: "1. Spread hummus evenly over the tortilla. 2. Layer shredded carrots, sliced cucumber, and baby spinach leaves on top of the hummus. 3. Roll up the tortilla tightly, tucking in the sides as you go. 4. Slice the wrap in half diagonally. 5. Serve immediately, or wrap in foil for an on-the-go meal.",
# )

# Recipe.create(
#   name: "Oatmeal with Berries",
#   description: "A warm and comforting breakfast option made with hearty oats and sweet, juicy berries.",
#   ingredients: "1/2 cup rolled oats, 1 cup water or milk, 1/2 cup mixed berries (such as strawberries, blueberries, raspberries), 1 tbsp honey or maple syrup (optional)",
#   cooking_time: 15,
#   servings: 1,
#   difficulty: "Easy",
#   method: "1. In a small saucepan, bring water or milk to a boil. 2. Stir in rolled oats and reduce heat to low. 3. Simmer uncovered for 5 minutes, stirring occasionally, until oats are thick and creamy. 4. Remove from heat and let stand for 1-2 minutes. 5. Transfer oatmeal to a bowl and top with mixed berries. 6. Drizzle with honey or maple syrup if desired. 7. Serve hot and enjoy!",
# )

# Recipe.create(
#   name: "Vegetable Stir Fry",
#   description: "A quick and healthy stir fry recipe packed with colorful vegetables and savory flavors.",
#   ingredients: "1 bell pepper, 1 onion, 1 carrot, 1 cup broccoli florets, 2 cloves garlic, 2 tbsp soy sauce, 1 tbsp sesame oil, 1 tsp ginger, 1 tbsp olive oil",
#   cooking_time: 15,
#   servings: 2,
#   difficulty: "Hard",
#   method: "1. Heat olive oil in a large skillet over medium-high heat. 2. Add minced garlic and ginger, stir for 30 seconds. 3. Add sliced bell pepper, onion, carrot, and broccoli. Stir-fry for 5-7 minutes until vegetables are tender-crisp. 4. Drizzle with soy sauce and sesame oil, toss to combine. 5. Serve hot.",
# )

# Recipe.create(
#   name: "Mediterranean Chickpea Salad",
#   description: "A refreshing salad bursting with Mediterranean flavors and protein-rich chickpeas.",
#   ingredients: "1 can chickpeas, 1 cucumber, 1 tomato, 1/4 red onion, 1/4 cup Kalamata olives, 2 tbsp olive oil, 1 tbsp lemon juice, 1 tsp dried oregano, Salt and pepper to taste",
#   cooking_time: 10,
#   servings: 2,
#   difficulty: "Easy",
#   method: "1. Rinse and drain chickpeas, then transfer to a large bowl. 2. Chop cucumber, tomato, red onion, and olives, add to the bowl with chickpeas. 3. In a small bowl, whisk together olive oil, lemon juice, oregano, salt, and pepper. 4. Pour the dressing over the salad and toss to combine. 5. Refrigerate for at least 30 minutes before serving.",
# )


# Recipe.create(
#   name:
#   description:
#   ingredients:
#   cooking_time:
#   servings:
#   difficulty:
#   method:
#   image_url:
# )

require "json"
require "open-uri"

 url = "https://api.spoonacular.com/recipes/complexSearch?number=10"
 api_key = ENV['RECIPEAPI']

# Append the API key to the URL
url_with_key = "#{url}&apiKey=#{api_key}"

# Make the HTTP request and read the response
recipes_serialized = URI.open(url_with_key).read

# Parse the JSON response
recipes = JSON.parse(recipes_serialized)

# Iterate over the recipes and print some information
recipes["results"].each do |recipe|
  recipe_url = "https://api.spoonacular.com/recipes/#{recipe['id']}/information?includeNutrition=false"

# Append the API key to the URL
  recipe_url_with_key = "#{recipe_url}&apiKey=#{api_key}"

# Make the HTTP request and read the response
recipes_serialized = URI.open(recipe_url_with_key).read

# Parse the JSON response
recipe = JSON.parse(recipes_serialized)
ingredients = ''
method = ''
recipe['extendedIngredients'].each do |ingredient|
  ingredients += "#{ingredient['name']}, "
  method += "#{ingredient['original']}, "
end



image_url = recipe['image']
p image_url
file = URI.open(image_url)
new_recipe = Recipe.new(name: recipe['title'], servings: recipe['servings'], cooking_time: recipe['readyInMinutes'], method: method,
ingredients: ingredients)
new_recipe.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
new_recipe.save!

end
