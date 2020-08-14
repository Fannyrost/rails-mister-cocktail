class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @doses = @cocktail.doses
    @ingredients = @cocktail.ingredients
    @dose = Dose.new
    @review = Review.new

  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    icons = ["https://image.flaticon.com/icons/svg/920/920711.svg", "https://image.flaticon.com/icons/svg/920/920719.svg", "https://image.flaticon.com/icons/svg/920/920728.svg", "https://image.flaticon.com/icons/svg/3254/3254550.svg", "https://image.flaticon.com/icons/svg/920/920706.svg", "https://image.flaticon.com/icons/svg/920/920729.svg", "https://image.flaticon.com/icons/svg/920/920697.svg", "https://image.flaticon.com/icons/svg/920/920584.svg", "https://image.flaticon.com/icons/svg/920/920577.svg", "https://image.flaticon.com/icons/svg/3126/3126698.svg", "https://image.flaticon.com/icons/svg/920/920700.svg", "https://image.flaticon.com/icons/svg/920/920702.svg", "https://image.flaticon.com/icons/svg/2093/2093423.svg", "https://image.flaticon.com/icons/svg/920/920577.svg"]
    @cocktail = Cocktail.new(cocktails_params)
    @cocktail.image_url = icons.sample
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
    params.require(:cocktail).permit(:name,  :photo)
  end
end
