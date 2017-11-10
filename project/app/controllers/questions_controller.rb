class QuestionsController < ApplicationController
	
	def index
		@questions = Question.all.order('created_at DESC')
	end	

	def new
		@question = Question.new
	end

	def create 
		@question = Question.new(question_params)
		@question.status = "Pendente"

		if @question.save
			redirect_to @question 
		else
			render 'new'
		end
		
	end

	def show 
		@question = Question.find(params[:id])
	end

	private 
		def question_params
			params.require(:question).permit(:title,:body,:status)
		end

end
