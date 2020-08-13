class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
    @ingredients = @cocktail.ingredients
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktails_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def set_cocktails
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end