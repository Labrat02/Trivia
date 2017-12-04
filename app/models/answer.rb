class Answer
  include Mongoid::Document
  field :answer_index, type: Integer
  field :is_correct, type: Boolean
  field :points_awarded, type: Integer

  has_one :answer_user, class_name: 'User'
  has_one :question_id, class_name: 'Question'
end
