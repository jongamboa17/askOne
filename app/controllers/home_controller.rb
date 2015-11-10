class HomeController < ApplicationController
	def index
		@questions=Question.order(created_at: :desc).page(params[:page]).per(5).where("body LIKE ?","%#{params[:search]}%")
		@count_questions= Question.count
			#.all.page(params[:page]).per_page(5).where("body LIKE ?","%#{params[:search]}%")
	end

	private
	def question_params
		params.require(:question).permit(:email, :body)
		
	end
end



	