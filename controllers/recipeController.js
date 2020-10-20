const Recipes = require('../models/recipesModel');

const listRecipes = async (req, res) => {
  const recipe = await Recipes.getRecipes();
  res.render('home', { recipe });
};

const listOneRecipe = async (req, res) => {
  const { id } = req.params;
  const recipeDetail = await Recipes.findById(id);
  return res.render('recipeDetail', { recipeDetail });
};

module.exports = { listRecipes, listOneRecipe };
