class QuestionsController < ApplicationController
  def index
  end

  def new
    # @question = Question.new({})
  end

  def create
    @question = Question.new(new_question_params)
    @question.question_user = current_user
    @question.save!

    flash[:alert] = 'Save Successful!'
    redirect_to new_question_url
  end

  def edit
    @question = Question.find(params[:id])
  end

  def show
  end

  def update
  end

  private

  def new_question_params
    params.require(:question).permit(:question_text, :question_reveal_text, :answers, :correct_answer_index)
  end
end
