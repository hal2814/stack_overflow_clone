class Question < ApplicationRecord
  belongs_to :user
  has_many :responses
  validates :question, :category :presence => true
end
