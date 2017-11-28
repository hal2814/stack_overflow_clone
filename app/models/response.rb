class Response < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :votes
  validates :response, :presence => true
  validates :best, inclusion: { in: [true, false] }
  validates :best, exclusion: { in: [nil] }
end
