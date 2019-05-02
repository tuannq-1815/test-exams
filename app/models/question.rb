class Question < ApplicationRecord
  has_many :test_questions
  has_many :results
  has_many :answers
  scope :list, ->{select :id, :question}
  QUESTION_PARAMS = [:question, :created_at].freeze
end
