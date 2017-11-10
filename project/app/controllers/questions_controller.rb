class QuestionsController < ApplicationController
	
	def index
		@questions = Question.all.order('created_at DESC')
	end	

	def new

	end

	def create 
		@question = Question.new(question_params)
		@question.status = "Pendente"
		@question.save

		redirect_to @question 
	end

	def show 
		@question = Question.find(params[:id])
	end

	private 
		def question_params
			params.require(:question).permit(:title,:body,:status)
		end

end
