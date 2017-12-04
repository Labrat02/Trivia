class Question
  include Mongoid::Document
  include Mongoid::Timestamps

  embeds_many :answers, class_name: 'QuestionAnswer'
  has_many :answer_submitions, class_name: 'Answer'
  belongs_to :question_user, class_name: 'User'

  field :tags, type: Array, default: []
  field :correct_answer_index, type: Integer, default: -1
  field :question_text, type: String
  field :question_reveal_text, type: String
end
