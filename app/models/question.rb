class Question < ApplicationRecord
  belongs_to :quiz
  validates :question, presence: true
  enum answer: [:×, :○]
end