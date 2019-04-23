class Score < ApplicationRecord
  has_many :results

  belongs_to :test
  belongs_to :user
end
