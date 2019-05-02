class Result < ApplicationRecord
  belongs_to :question
  belongs_to :score
  RESULT_PARAMS = [:question_id, :score_id].freeze
end
