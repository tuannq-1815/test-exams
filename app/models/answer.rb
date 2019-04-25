class Answer < ApplicationRecord
  belongs_to :question
  scope :list_answer, -> (quesstion_id){ where question_id: quesstion_id }
end
