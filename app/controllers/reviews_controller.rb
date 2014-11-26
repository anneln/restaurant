class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit]



  def new
    set_resto
    @review = Review.new
  end

  def create
    set_resto
    @review = Review.new(review_params)
    @review.resto = @resto
    @review.save
    redirect_to resto_path(@resto)
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content, :rating)
    end
    def set_resto
      @resto = Resto.find(params[:resto_id])
    end
end
