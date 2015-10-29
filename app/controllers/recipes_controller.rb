class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all.order(created_at: :desc)
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])

		if @recipe.update_attributes(params.require(:recipe).permit(:title, :description, :steps, :img, ingredients_attributes: [:id, :_destroy, :item]))
			redirect_to recipes_path
		else
			render "edit"
		end		
	end

	def new
		@recipe = Recipe.new
		5.times { @recipe.ingredients.build }
	end

	def create
		@recipe = Recipe.new(params.require(:recipe).permit(:title, :description, :steps, :img, ingredients_attributes: [:id, :_destroy, :item]))

		if @recipe.save
			redirect_to recipes_path
		else
			render "new"
		end
	end

	def destroy
		
	end

end
