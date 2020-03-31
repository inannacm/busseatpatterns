class PatternsController < ApplicationController

  def index
    @patterns = Pattern.order(created_at: :desc)
  end

  def show
    @pattern = Pattern.find(params[:id])
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)
    if @pattern.save
      redirect_to pattern_path(@pattern)
    else
      render :new
    end
  end

  def edit
    @pattern = Pattern.find(params[:id])
  end

 def update
    @pattern = Pattern.find(params[:id])
    if @pattern.update(pattern_params)
      redirect_to pattern_path(@pattern)
    else
      render :edit
    end

  end

  def destroy
    @pattern = Pattern.find(params[:id])
    @pattern.destroy
    redirect_to root_path
  end

  private

  def pattern_params
    params.require(:pattern).permit(:location, :description, :photo)
  end

end
