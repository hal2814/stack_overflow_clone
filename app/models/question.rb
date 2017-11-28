class Question < ApplicationRecord
  belongs_to :user
  has_many :responses
  has_many :votes
  validates :question, :category, :presence => true
end
