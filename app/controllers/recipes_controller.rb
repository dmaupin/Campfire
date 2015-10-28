class RecipesController < ApplicationController
	def index
		@recipes = Recipe.all
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])

		if @recipe.update_attributes(params.require(:recipe).permit(:title, :description, :steps, :img))
			redirect_to recipes_path
		else
			render "edit"
		end		
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(params.require(:recipe).permit(:title, :description, :steps, :img))

		if @recipe.save
			redirect_to recipes_path
		else
			render "new"
		end
	end

	def destroy
		
	end

end
