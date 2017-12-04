module DefaultHelper
  def my_questions_recent
    # order by create?
    Question.where(question_user: current_user.id).limit(3).only(:id, :question_text, :owner_id)
  end

  def my_questions_count
    Question.where(question_user: current_user.id).count
  end

  def trivia_questions_preview
    Question.not_in(question_user: current_user.id).limit(3).only(:id, :question_text)
  end

  def trivia_questions_count
    Question.not_in(question_user: current_user.id).count
  end
end
