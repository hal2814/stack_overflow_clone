class Response < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :response, :presence => true
  validates :best, inclusion: { in: [true, false] }
  validates :best, exclusion: { in: [nil] }
end
