class HouseMakersController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  def index
    @house_makers = HouseMaker.all
    @reviews = Review.all
    @q = HouseMaker.ransack(params[:q])
    @house_makers = @q.result(distinct: true)
  end

  def show
    @house_maker = HouseMaker.find(params[:id])
    @review = Review.new
  end

end
