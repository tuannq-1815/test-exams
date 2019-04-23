class Test < ApplicationRecord
  has_many :test_questions
  has_many :scores
  belongs_to :subject
end
