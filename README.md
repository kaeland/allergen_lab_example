# Allergen Lab: 

User  -<  Recipe -<  RecipeIngredient  >- Ingredient   
User -< Allergy >- Ingredient 

## User 
- first_name 
- last_name 

## Recipe 
- title 
- user_id 

## RecipeIngredient 
- recipe_id 
- ingredient_id 

## Ingredient 
- name  

## Allergy 
- user_id
- ingredient_id 

## Workflow reminder
- Rails new 
- Rails g model user first_name last_name 
- Migrate 
- Seed database
- Test in rails console
- Edit models, aka add associations and validations
- Test again in rails console 
- Edit routes.rb with necessary routes
- Rails g controller user index new create 
- Edit controller actions 
- Check your views 
- Repeat above for other models 

