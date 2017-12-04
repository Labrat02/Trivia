class DefaultController < ApplicationController
  include DefaultHelper
  before_action :index

  def index
    @trivia_questions = trivia_questions_preview
    @trivia_questions_count = trivia_questions_count
    @my_questions = my_questions_recent
    @my_questions_count = my_questions_count
  end

  def about
  end
end
