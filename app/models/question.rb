class Question < ApplicationRecord
  has_many :test_questions
  has_many :results
  has_many :answers
end
