class ReviewsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :set_review, only: [:destroy] 
    
    def new
        @review = Review.new
    end
    
    def show
        @review = Review.find(params[:id])
    end
    
    def destroy
        @review.destroy
        redirect_to :back, notice: '評論を削除しました'
    end
    
    def create
        @review = current_user.reviews.build(reviews_params)
        if @review.save
            flash[:success] = "評論をしました！"
            redirect_to root_url
        else
            render 'static_pages'
        end
    end
    
    private
    
    def reviews_params
        params.require(:review).permit(:title, :content, :story)
    end
    
    def set_review
        @review = Review.find(params[:id])
    end
    
end
