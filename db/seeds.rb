
puts "Cleaning database"
Favourite.destroy_all
Review.destroy_all
User.destroy_all
Recipe.destroy_all

puts "Creating Users"

user = User.create(email: "test@test.com", password: "123456")


puts "Creating recipes..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/33/Espaguetis_carbonara.jpg")
recipe_1 = Recipe.create(
  name: "Classic Spaghetti Carbonara",
  description: "A creamy and indulgent pasta dish with bacon and Parmesan cheese.",
  ingredients: "200g spaghetti, 100g pancetta or bacon, 2 large eggs, 50g grated Parmesan cheese, black pepper, salt.",
  cooking_time: 20,
  servings: 2,
  difficulty: "Medium",
  method: "1. Cook spaghetti until al dente. 2. Fry pancetta until crisp. 3. Whisk eggs with Parmesan. 4. Toss cooked pasta in egg mixture.",
)
recipe_1.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_1.save

file = URI.open("https://www.recipesmadeeasy.co.uk/wp-content/uploads/2019/10/spicy-beef-tacos-4.jpg")
recipe_2 = Recipe.create(
  name: "Spicy Beef Tacos",
  description: "A flavorful twist on classic tacos with seasoned beef, spicy salsa, and fresh toppings.",
  ingredients: "500g ground beef, taco seasoning, 8 small tortillas, lettuce, tomato, onion, cheese, salsa, sour cream, lime wedges.",
  cooking_time: 25,
  servings: 4,
  difficulty: "Easy",
  method: "1. Brown ground beef and season with taco seasoning. 2. Warm tortillas in a skillet. 3. Assemble tacos with beef and toppings. 4. Serve with salsa, sour cream, and lime wedges."
)
recipe_2.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_2.save

file = URI.open("https://img.freepik.com/premium-photo/savory-beef-vegetable-stirfry-generative-ai_147933-1369.jpg")
recipe_3 = Recipe.create(
  name: "Savory Beef Stir Fry",
  description: "A flavorful blend of tender beef strips, crisp vegetables, and savory sauce.",
  ingredients: "300g beef steak, mixed vegetables (bell peppers, broccoli, carrots), soy sauce, garlic, ginger, cornstarch, rice.",
  cooking_time: 25,
  servings: 2,
  difficulty: "Medium",
  method: "1. Marinate beef strips in soy sauce, garlic, and ginger. 2. Stir-fry vegetables until tender-crisp. 3. Cook beef until browned. 4. Add sauce and simmer. 5. Combine with vegetables.",
)
recipe_3.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_3.save

file = URI.open("https://www.acouplecooks.com/wp-content/uploads/2022/10/Margherita-Pizza-093.jpg")
recipe_4 = Recipe.create(
  name: "Homemade Margherita Pizza",
  description: "Classic Italian pizza topped with fresh tomatoes, mozzarella, and basil leaves.",
  ingredients: "Pizza dough, 1 cup tomato sauce, fresh mozzarella cheese, fresh basil leaves, olive oil, salt, pepper.",
  cooking_time: 15,
  servings: 2,
  difficulty: "Easy",
  method: "1. Roll out pizza dough. 2. Spread sauce and top with cheese and basil. 3. Bake until crust is golden and cheese is bubbly.",
)
recipe_4.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_4.save

file = URI.open("https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2020/07/Garlic-Grilled-Shrimp-Skewers-7.jpg")
recipe_5 = Recipe.create(
  name: "Zesty Lemon Garlic Shrimp",
  description: "Juicy shrimp cooked in a tangy lemon-garlic sauce, perfect for a quick dinner.",
  ingredients: "300g shrimp, garlic, lemon juice, butter, parsley, salt, pepper.",
  cooking_time: 10,
  servings: 2,
  difficulty: "Easy",
  method: "1. Sauté garlic in butter. 2. Add shrimp and cook until pink. 3. Deglaze with lemon juice. 4. Season with salt, pepper, and parsley.",
)
recipe_5.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_5.save

file = URI.open("https://food-images.files.bbci.co.uk/food/recipes/hearty_vegetable_soup_14365_16x9.jpg")
recipe_6 = Recipe.create(
  name: "Hearty Vegetable Soup",
  description: "A comforting soup packed with a variety of colorful vegetables and flavorful broth.",
  ingredients: "Assorted vegetables (carrots, celery, onions, potatoes), vegetable broth, garlic, thyme, bay leaf, salt, pepper.",
  cooking_time: 40,
  servings: 4,
  difficulty: "Easy",
  method: "1. Sauté vegetables until softened. 2. Add broth, garlic, thyme, and bay leaf. 3. Simmer until vegetables are tender. 4. Season to taste.",
)
recipe_6.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_6.save

file = URI.open("https://www.savoryexperiments.com/wp-content/uploads/2023/11/Chicken-Tenders-21.jpg")
recipe_7 = Recipe.create(
  name: "Crispy Baked Chicken Tenders",
  description: "Tender chicken strips coated in a crispy breadcrumb crust, baked to golden perfection.",
  ingredients: "Chicken breast strips, breadcrumbs, Parmesan cheese, eggs, garlic powder, paprika, salt, pepper.",
  cooking_time: 25,
  servings: 2,
  difficulty: "Easy",
  method: "1. Dip chicken in beaten eggs. 2. Coat with breadcrumb mixture. 3. Bake until golden and crispy.",
)
recipe_7.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_7.save

file = URI.open("https://www.cookinwithmima.com/wp-content/uploads/2021/08/Caprese-Salad-2-6.jpg")
recipe_8 = Recipe.create(
  name: "Refreshing Caprese Salad",
  description: "A simple yet elegant salad showcasing ripe tomatoes, fresh mozzarella, and fragrant basil.",
  ingredients: "Tomatoes, fresh mozzarella cheese, fresh basil leaves, balsamic glaze, olive oil, salt, pepper.",
  cooking_time: 10,
  servings: 2,
  difficulty: "Easy",
  method: "1. Arrange tomato and mozzarella slices on a plate. 2. Drizzle with olive oil and balsamic glaze. 3. Season with salt, pepper, and garnish with basil leaves.",
)
recipe_8.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_8.save

file = URI.open("https://www.lilvienna.com/wp-content/uploads/Recipe-easy-mushroom-risotto.jpg")
recipe_9 = Recipe.create(
  name: "Creamy Mushroom Risotto",
  description: "A rich and creamy Italian rice dish flavored with earthy mushrooms and Parmesan cheese.",
  ingredients: "Arborio rice, mushrooms (such as cremini or shiitake), onion, garlic, vegetable broth, white wine, Parmesan cheese, butter, parsley.",
  cooking_time: 35,
  servings: 2,
  difficulty: "Medium",
  method: "1. Sauté mushrooms, onion, and garlic. 2. Add rice and cook until translucent. 3. Deglaze with wine. 4. Gradually add broth and stir until creamy. 5. Stir in Parmesan and butter.",
)
recipe_9.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_9.save

file = URI.open("https://thescranline.com/wp-content/uploads/2023/09/FLUFFY-PANCAKES-S-01.jpg")
recipe_10 = Recipe.create(
  name: "Fluffy Pancakes with Maple Syrup",
  description: "Deliciously light and fluffy pancakes drizzled with sweet maple syrup.",
  ingredients: "Flour, milk, eggs, baking powder, salt, butter, maple syrup.",
  cooking_time: 15,
  servings: 2,
  difficulty: "Easy",
  method: "1. Mix dry ingredients. 2. Add wet ingredients and whisk until smooth. 3. Cook on a hot griddle until golden. 4. Serve with butter and maple syrup.",
)
recipe_10.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
recipe_10.save



require "json"
require "open-uri"

 url = "https://api.spoonacular.com/recipes/complexSearch?number=10"
 api_key = ENV['FOODAPI']

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

# Extract calories, protein, and fat using regular expressions
calories = recipe.dig('summary')&.match(/(\d+)\s*calories/i)&.captures&.first
protein = recipe.dig('summary')&.match(/(\d+)\s*g\s*of\s*protein/i)&.captures&.first
fat = recipe.dig('summary')&.match(/(\d+)\s*g\s*of\s*fat/i)&.captures&.first

# Convert extracted values to integers
calories = calories.to_i if calories
protein = protein.to_i if protein
fat = fat.to_i if fat

ingredients = ''

recipe['extendedIngredients'].each do |ingredient|
  ingredients += "#{ingredient['name']}, "
  # method += "#{ingredient['original']}, "
end

  dietary_requirements = []
  dietary_requirements << 'VE' if recipe['vegetarian']
  dietary_requirements << 'VG' if recipe['vegan']
  dietary_requirements << 'GF' if recipe['glutenFree']
  dietary_requirements << 'DF' if recipe['dairyFree']

  # Extract relevant recipe information
  title = recipe['title']
  servings = recipe['servings']
  cooking_time = recipe['readyInMinutes']
  ingredients = recipe['extendedIngredients'].map { |ingredient| ingredient['name'] }.join(', ')

  # Fetch wine pairing information
  wine_pairing_url = "https://api.spoonacular.com/food/wine/pairing?food=#{title}&apiKey=#{api_key}"
  wine_pairing_serialized = URI.open(wine_pairing_url).read
  wine_pairing_data = JSON.parse(wine_pairing_serialized)

  # Extract wine pairing information
  paired_wines = wine_pairing_data['pairedWines'] ? wine_pairing_data['pairedWines'].join(', ') : ""
  pairing_text = wine_pairing_data['pairingText']




  image_url = recipe['image']
  p image_url
  file = URI.open(image_url)

  new_recipe = Recipe.new(name: recipe['title'], servings: recipe['servings'], cooking_time: recipe['readyInMinutes'],
  ingredients: ingredients, dietary_requirements: dietary_requirements.join(', '), calories: calories, protein: protein, fat: fat, paired_wines: paired_wines, pairing_text: pairing_text)

  new_recipe.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
  new_recipe.save!

end
