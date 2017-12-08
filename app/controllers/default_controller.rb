class DefaultController < ApplicationController
  include DefaultHelper
  before_action :set_trivia, only: [:index], if: -> { user_signed_in? }
  skip_before_action :authenticate_user!

  def index
    return if user_signed_in?
    redirect_to new_user_session_url
  end

  def about
  end

  private

  def set_trivia
    @trivia_questions = trivia_questions_preview
    @trivia_questions_count = trivia_questions_count
    @my_questions = my_questions_recent
    @my_questions_count = my_questions_count
  end
end
