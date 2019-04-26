class SnacksController < ApplicationController

  def index
    @snacks = Snack.all
  end

  def show
    @snack = Snack.find(params[:id])
  end

  def new
    @snack = Snack.new
  end

  def create
    snack = Snack.create(strong_params)
    redirect_to snack_path(snack)
  end

  def edit
    @snack = Snack.find(params[:id])
  end

  def update
    snack = Snack.find(params[:id])
    snack.update(strong_params)

    redirect_to snack_path(snack)
  end

  def destroy
    snack = Snack.find(params[:id])
    snack.destroy
    redirect_to snacks_path
  end

  private

  def strong_params
    params.require(:snack).permit(:name, :deliciousness, :calories)
  end


end
