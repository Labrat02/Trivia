module TriviaHelper
  def get_tags(user)
  end

  def get_trivia_questions_current_user(id)
    Question.not_in(question_user: current_user).only(:id, :question_text)
  end

  def get_trivia_question(id)
    Question.only(:id, :question_text, :question_reveal_text, :answers).find(id)
  end
end
