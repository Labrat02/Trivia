class QuestionsController < ApplicationController
  def index
  end

  def new
    @question = Question.new(
      answers: [QuestionAnswer.new(answer_text: ''), QuestionAnswer.new(answer_text: '')],
      correct_answer_index: 0
    )
  end

  def create
    @question = Question.new(new_question_params)
    @question.question_user = current_user

    params.each_pair do |k, v|
      unless (k =~ /answer_option_(.*)/).nil?
        @question.answers.push QuestionAnswer.new(answer_text: v.to_s)
      end
    end

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
