class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  
  def index
    
    @house_maker = HouseMaker.find(params[:house_maker_id])
    @reviews = @house_maker.reviews.all.page(params[:page]).per(5)
    
    
  end
  

  def create
    
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to house_maker_reviews_path(@review.house_maker)
    else
      @house_maker = HouseMaker.find(params[:house_maker_id])
      render "house_makers/show"
    end
  end
  

  private
  def review_params
    params.require(:review).permit(:house_maker_id, :score, :content)
  end

end
