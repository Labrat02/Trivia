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

    params[:question][:answers].each do |v|
      @question.answers.push QuestionAnswer.new(answer_text: v)
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
    @question = Question.find(params[:id])

    # // this is hacky, find a better way to map or handle checkboxes
    answers = []
    params[:question][:answers].each do |v|
      answers.push QuestionAnswer.new(answer_text: v)
    end
    @question.answers = answers

    @question.update(edit_question_params)

    flash[:alert] = 'Update Successful!'
    redirect_to questions_path
  end

  private

  def new_question_params
    params.require(:question).permit(:question_text, :question_reveal_text, :answers, :correct_answer_index)
  end

  def edit_question_params
    params.require(:question).permit(:question_text, :question_reveal_text, :correct_answer_index)
  end
end
