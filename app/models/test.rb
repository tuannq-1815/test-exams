class Test < ApplicationRecord
  has_many :test_questions
  has_many :questions, through: :test_questions
  has_many :scores
  belongs_to :subject
  scope :by_subject_id, -> (subject_id){ where("subject_id = ?", subject_id) }
  TEST_PARAMS = [:name, :time_limit, :subject_id, :created_at].freeze
end
