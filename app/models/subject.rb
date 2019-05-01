class Subject < ApplicationRecord
  has_many :tests
  SUBJECT_PARAMS = [:name, :author_name].freeze
end
