class TriviaController < ApplicationController
  include TriviaHelper
  before_action :index
  def index
    @trivia_questions = get_trivia_questions_current_user(current_user.id)
  end

  def answer
    @trivia_question = get_trivia_question(params[:id])
  end

  def submit
    @trivia_question = get_trivia_question(params[:id])

    @answer = Answer.new(new_answer_params)
    @answer.user = current_user
    @answer.save!

    flash[:alert] = 'Save Successful!'
    redirect_to new_question_url
  end

  private

  def new_question_params
    params.require(:answer).permit(:answer_index, :is_correct, :points_awarded, :user_id)
  end
end
