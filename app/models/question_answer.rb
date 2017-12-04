class QuestionAnswer
  include Mongoid::Document
  field :answer_text, type: String

  embedded_in :question, class_name: 'Question'
end
